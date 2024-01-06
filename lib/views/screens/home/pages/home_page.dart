import 'package:flutter/material.dart';
import 'package:gelivery_myanmar_test/core/constants/colors.dart';
import 'package:gelivery_myanmar_test/views/screens/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../widgets/pickup_item.dart';

class HomePage extends GetView<HomeController> {
  static const String route = "/home";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Pickup Completed",
            style: TextStyle(color: AppColors.white),
          ),
          backgroundColor: AppColors.mainColor,
          actions: [
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11)),
                onPressed: () {
                  showAlertDialog(context);
                },
                child: const Text(
                  "Logout",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ))
          ],
        ),
        body: Obx(() {
          if (controller.isItemLoading.value && controller.itemList.isEmpty) {
            return SizedBox(
                width: Get.width,
                height: Get.height * 0.6,
                child: const Center(
                    child: CircularProgressIndicator(
                  color: AppColors.secondaryColor,
                )));
          }
          if (controller.itemList.isEmpty) {
            return RefreshIndicator(
              onRefresh: () => controller.fetchItem(0),
              child: Stack(
                children: [
                  ListView(),
                  const Center(
                      child: Text(
                    "No Pickup Items",
                    style: TextStyle(color: AppColors.secondaryColor),
                  )),
                ],
              ),
            );
          }
          return RefreshIndicator(
            onRefresh: () => controller.fetchItem(0),
            child: ListView.builder(
              controller: controller.itemScrollController,
              itemCount: controller.itemList.length,
              padding: const EdgeInsets.fromLTRB(6, 6, 6, 20),
              itemBuilder: (context, index) {
                return pickupItem(controller.itemList[index], index + 1,
                    controller.totalRecords.value);
              },
            ),
          );
        }));
  }

  showAlertDialog(BuildContext context) {
    Widget cancelButton = MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: const Text(
        "Cancel",
        style: TextStyle(color: AppColors.textColor),
      ),
      onPressed: () {
        Get.back();
      },
    );
    Widget continueButton = MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: const Text(
        "Logout",
        style: TextStyle(
            color: AppColors.secondaryColor, fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        Get.back();
        controller.logout();
      },
    );
    AlertDialog alert = AlertDialog(
      actionsPadding: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: const Text("Logout"),
      content: const Text("Do you want to logout?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
