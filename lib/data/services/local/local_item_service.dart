import 'package:gelivery_myanmar_test/data/models/item.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class LocalItemService {
  Future deleteAllItems();
  Future saveAllItems(List<Item> item);
  Stream<List<Item>> subscribeItems();
}

class LocalItemServiceImpl implements LocalItemService {
  static final LocalItemServiceImpl _singleton =
      LocalItemServiceImpl._internal();
  LocalItemServiceImpl._internal();
  factory LocalItemServiceImpl() => _singleton;

  Future<Box<Item>> box = Hive.openBox<Item>("items");

  @override
  Future deleteAllItems() async {
    await (await box).clear();
  }

  @override
  Future saveAllItems(List<Item> item) async {
    await (await box).putAll({for (var i in item) i.trackingId: i});
  }

  @override
  Stream<List<Item>> subscribeItems() async* {
    var itemBox = await box;
    yield _filterAndSort();
    yield* itemBox.watch().map<List<Item>>((event) {
      return _filterAndSort();
    });
  }

  List<Item> _filterAndSort() {
    var b = Hive.box<Item>("items");
    var templist = b.values.toList();
    templist.sort(((a, b) => b.pickupDate.compareTo(a.pickupDate)));
    return templist;
  }
}
