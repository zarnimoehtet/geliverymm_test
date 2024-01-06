import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constants/colors.dart';
import '../../core/helpers/state.dart';

Future showLoadingDialog({String? message}) {
  return Get.dialog(
      AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        alignment: Alignment.center,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            message != null
                ? Row(
                    children: [
                      const CircularProgressIndicator(
                        color: AppColors.secondaryColor,
                      ),
                      Text(
                        message,
                        style: const TextStyle(
                            fontSize: 14, color: AppColors.mainColor),
                      )
                    ],
                  )
                : const CircularProgressIndicator(
                    color: AppColors.secondaryColor),
          ],
        ),
      ),
      barrierDismissible: false);
}

Future showMessageDialog(String message,
    {TextAlign Function(dynamic message)? alignment, List<Widget>? actions}) {
  return Get.dialog(AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    alignment: Alignment.center,
    content: Text(
      message,
      textAlign: alignment?.call(message) ?? TextAlign.center,
    ),
    contentPadding: (actions?.isEmpty ?? true)
        ? const EdgeInsets.fromLTRB(24, 24, 24, 15)
        : const EdgeInsets.fromLTRB(24, 24, 24, 0),
    actionsPadding: const EdgeInsets.fromLTRB(0, 0, 24, 10),
    actions: actions,
  ));
}

bool _showDialog = false;
StreamSubscription<MyState<T>> showStateableDialog<T>(
    Stream<MyState<T>> stream, Function(T t) onSuccess,
    {String? message,
    Function()? onLoading,
    Function(dynamic error)? onError,
    TextAlign Function(dynamic error)? alignmentErrorMessage}) {
  _showDialog = false;
  return stream.listen((state) {
    if (_showDialog) {
      Get.back();
      _showDialog = false;
    }
    if (state is StateLoading<T>) {
      onLoading?.call();
      _showDialog = true;
      showLoadingDialog().then((value) => _showDialog = false);
    }
    if (state is StateError<T>) {
      onError?.call(state.error);
      _showDialog = true;
      showMessageDialog(state.error.toString(),
              alignment: alignmentErrorMessage)
          .then((value) => _showDialog = false);
    }
    if (state is StateSuccess<T>) {
      onSuccess(state.data);
      _showDialog = false;
    }
  });
}

StreamSubscription<MyState<T>> loadStateableStream<T>(
  Stream<MyState<T>> stream, {
  Function()? onLoading,
  required Function(T t) onSuccess,
  Function(dynamic error)? onError,
}) {
  return stream.listen((state) {
    if (state is StateLoading<T>) {
      onLoading?.call();
    }
    if (state is StateError<T>) {
      onError?.call(state.error);
    }
    if (state is StateSuccess<T>) {
      onSuccess(state.data);
    }
  });
}
