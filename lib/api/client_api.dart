import 'package:custom_bet_api/custom_bet_api.dart';

class ClientApi {
  static CustomBetApi? _instance;

  static CustomBetApi get instance {
    return _instance ??= CustomBetApi(
      //basePathOverride: "http://192.168.11.120:7000",
      basePathOverride: "http://192.168.1.96:7000",
    );
  }
}
