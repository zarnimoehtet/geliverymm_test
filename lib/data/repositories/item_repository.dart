import 'package:gelivery_myanmar_test/data/models/item.dart';
import 'package:gelivery_myanmar_test/data/services/local/local_item_service.dart';
import 'package:gelivery_myanmar_test/data/services/remote/api_service.dart';
import 'package:get/get.dart';

abstract class ItemRepository {
  Future<int> fetchItems(int page);
  Stream<List<Item>> subscribeItemList();
}

class ItemRepositoryImpl implements ItemRepository {
  static final ItemRepositoryImpl _singleton = ItemRepositoryImpl._internal();
  ItemRepositoryImpl._internal();
  factory ItemRepositoryImpl() => _singleton;

  final ApiService remote = Get.find<ApiService>();
  final LocalItemService local = Get.find<LocalItemService>();

  @override
  Future<int> fetchItems(int page) async {
    var response = await remote.getPickList(page);
    if (response.success ?? true) {
      if (page == 0) {
        await local.deleteAllItems();
      }
      await local.saveAllItems(response.pickupItem.itemList);

      return response.pickupItem.totalRecords ?? 0;
    } else {
      throw response.message ?? "Something was wrong";
    }
  }

  @override
  Stream<List<Item>> subscribeItemList() {
    return local.subscribeItems();
  }
}
