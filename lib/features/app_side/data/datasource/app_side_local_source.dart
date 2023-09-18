import 'package:flutter_printer_sdk/core/usecase/base_use_case.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class BaseAppSideLocalSource {
  Future<void> cacheData(String url);
  Future<bool> checkIfLogin(NoParameters noParameters);
}

class AppSideLocalSource extends BaseAppSideLocalSource {
  @override
  Future<void> cacheData(String url) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('url', url);
  }

  @override
  Future<bool> checkIfLogin(NoParameters url) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('url')) {
      if (prefs.getString('url')!.isNotEmpty) {
        return true;
      }
    }
    return false;
  }
}
