// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gelivery_myanmar_test/core/extensions/extension_collection.dart';
import 'package:gelivery_myanmar_test/data/models/item.dart';
import 'package:gelivery_myanmar_test/viewmodel/auth_viewmodel.dart';
import 'package:gelivery_myanmar_test/viewmodel/item_viewmodel.dart';
import 'package:gelivery_myanmar_test/views/custom/state_dialog.dart';
import 'package:gelivery_myanmar_test/views/screens/splash/page/splash_page.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt totalRecords = RxInt(0);

  RxList<Item> itemList = RxList();

  final RxBool isItemLoading = RxBool(false);

  final ItemViewModel _itemVM = Get.find();

  final AuthViewModel _authVM = Get.find();

  final ScrollController itemScrollController = ScrollController();

  @override
  void onInit() {
    _subscribeItemList();
    _subscribeLogout();
    fetchItem(0);
    itemScrollController.onScrollEnd(() {
      if (!isItemLoading.value) {
        int page = itemList.length ~/ 10;
        fetchItem(page);
      }
    });

    super.onInit();
  }

  StreamSubscription? itemSubscription;
  void _subscribeItemList() {
    itemSubscription = _itemVM.itemStream.listen((event) {
      itemList.clear();
      itemList.addAll(event);
    });
    _itemVM.subscribeItemList();
  }

  Future fetchItem(int page) async {
    isItemLoading.value = true;

    totalRecords.value = await _itemVM.fetchItemList(page);

    isItemLoading.value = false;
  }

  StreamSubscription? logoutStream;
  void _subscribeLogout() {
    logoutStream = showStateableDialog(_authVM.logoutStream, (_) async {
      await logoutStream?.cancel();
      Get.offAllNamed(SplashPage.route);
    });
  }

  logout() {
    _authVM.logout();
  }
}
