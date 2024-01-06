import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';

import 'core/utils/hive_utils.dart';
import 'injection.dart';
import 'views/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await dotenv.load(fileName: ".env");
  await HiveUtils.registerHive();
  await initInjection();
  runApp(const GeliveryMMApp());
}
