import 'package:gelivery_myanmar_test/data/models/token.dart';
import 'package:get_storage/get_storage.dart';

class StorageUtils {
  static final storage = GetStorage();
  static Token? getSavedToken() {
    var accessToken = storage.read<String>("accessToken");
    var refreshToken = storage.read<String>("refreshToken");
    var exptime = storage.read<int>("expTime");
    if (accessToken != null && refreshToken != null && exptime != null) {
      var token = Token(accessToken, "", refreshToken, exptime, "");
      return token;
    } else {
      return null;
    }
  }

  static void saveToken(Token? token) async {
    await storage.write("accessToken", token?.accessToken);
    await storage.write("refreshToken", token?.refreshToken);
    await storage.write("expTime", token?.expireTime);
    await storage.save();
  }

  static void removeToken() async {
    await storage.remove("accessToken");
    await storage.remove("refreshToken");
    await storage.remove("expTime");
    await storage.save();
  }
}
