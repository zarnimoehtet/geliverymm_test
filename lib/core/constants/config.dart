import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static String get devhost {
    return dotenv.env["UAT"]!;
  }
}
