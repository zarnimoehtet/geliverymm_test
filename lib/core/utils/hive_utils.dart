import 'package:gelivery_myanmar_test/data/models/item.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveUtils {
  static Future registerHive() async {
    await Hive.initFlutter();
    _register(0, ItemImplAdapter());
  }
}

void _register<T>(int typeId, TypeAdapter<T> adapter) {
  if (!Hive.isAdapterRegistered(typeId)) {
    Hive.registerAdapter<T>(adapter);
  }
}
