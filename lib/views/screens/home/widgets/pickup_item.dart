import 'package:flutter/material.dart';
import 'package:gelivery_myanmar_test/core/constants/colors.dart';
import 'package:gelivery_myanmar_test/core/extensions/extension_collection.dart';
import 'package:gelivery_myanmar_test/data/models/item.dart';

Widget pickupItem(Item item, int index, int max) {
  return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
      margin: const EdgeInsets.only(left: 11, right: 11, top: 5, bottom: 5),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    item.trackingId,
                    style: const TextStyle(
                        color: AppColors.mainColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    item.osName,
                    style: const TextStyle(
                        color: AppColors.textColor, fontSize: 14),
                  ),
                ],
              ),
            ),
            Flexible(
                flex: 5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          item.osTownshipName,
                          style: const TextStyle(
                              color: AppColors.textColor, fontSize: 14),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          item.osPrimaryPhone,
                          style: const TextStyle(
                              color: AppColors.textColor, fontSize: 14),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          item.pickupDate
                              .toDateTime(format: "yyyy-MM-dd")
                              .toFormat("dd/MM/yyyy"),
                          style: const TextStyle(
                              color: AppColors.textColor, fontSize: 14),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${item.totalWays} ways",
                          style: const TextStyle(
                              color: AppColors.textColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "$index of $max",
                          style: const TextStyle(
                            color: AppColors.textColor,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ));
}
