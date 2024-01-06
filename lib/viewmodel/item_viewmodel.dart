// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:gelivery_myanmar_test/core/helpers/state.dart';
import 'package:gelivery_myanmar_test/data/models/item.dart';
import 'package:gelivery_myanmar_test/data/repositories/item_repository.dart';
import 'package:get/get.dart';

class ItemViewModel {
  static final ItemViewModel _singleton = ItemViewModel._internal();
  factory ItemViewModel() => _singleton;
  ItemViewModel._internal() {
    itemStream = _itemListController.stream;
    maxRecordsSubject = _maxRecordsController.stream;
    subscribeItemList();
  }

  final ItemRepository _itemRepository = Get.find();

  final StreamController<List<Item>> _itemListController =
      StreamController<List<Item>>.broadcast();
  late Stream<List<Item>> itemStream;
  StreamSubscription? _itemListSubscription;

  void subscribeItemList() {
    _itemListSubscription?.cancel();
    _itemListSubscription = _itemRepository
        .subscribeItemList()
        .handleError(_itemListController.sink.addError)
        .listen(_itemListController.sink.add);
  }

  final StreamController<MyState<int>> _maxRecordsController =
      StreamController<MyState<int>>.broadcast();
  late Stream<MyState<int>> maxRecordsSubject;

  Future<int> fetchItemList(int page) async {
    _maxRecordsController.sink.add(MyState.loading());
    try {
      var maxRecord = await _itemRepository.fetchItems(page);
      _maxRecordsController.sink.add(MyState.success(maxRecord));
      return maxRecord;
    } on DioError catch (e) {
      _maxRecordsController.sink.add(MyState.failed(e.message));
    } catch (e) {
      _maxRecordsController.sink.add(MyState.failed(e));
    }
    return 0;
  }
}
