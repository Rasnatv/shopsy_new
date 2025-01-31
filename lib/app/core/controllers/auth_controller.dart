import 'dart:async';

import 'package:get/get.dart';
import 'package:innsouls_flutter/app/common/storage/storage.dart';
import 'package:innsouls_flutter/app/common/utils/loading_dialog.dart';

class AuthController extends GetxController {
  final String _keyIsLoggedIn = "user_is_logged";
  final String _keyUserToken = "user_is_token";
  final String _keyRefreshToken = "user_is_refresh_token";

  static AuthController get to => (Get.isRegistered<AuthController>() == false) ? Get.put(AuthController()) : Get.find();

  String _userToken = '';
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  String get getUserToken => _userToken;

  late Timer _authTimer;

  @override
  void onInit() {
    _isLoggedIn = Storage.getValue(_keyIsLoggedIn) == true;
    _userToken = Storage.getValue(_keyUserToken) ?? '';
    super.onInit();
  }

  @override
  dispose() {
    super.dispose();
    _authTimer.cancel();
  }

  void setCredentials(String token, String refreshToken) {
    _isLoggedIn = true;
    _userToken = token;
    Storage.saveValueForce(_keyIsLoggedIn, true);
    Storage.saveValueForce(_keyUserToken, token);
    Storage.saveValueForce(_keyRefreshToken, refreshToken);
    update();
  }

  void logout() async {
    _isLoggedIn = false;
    _userToken = '';
    Storage.saveValueForce(_keyIsLoggedIn, false);
    Storage.saveValueForce(_keyUserToken, '');

    LoadingDialog.close();
    update();
   // Get.offAllNamed(Routes.LOGIN);
  }

  Future<String?> requestRefreshToken() async {
    // String refreshToken = Storage.getValue(_keyRefreshToken);
    // var response = await AuthRepository.to.refreshToken(refreshToken: refreshToken);
    // printDebug(response.data?.access);
    // setCredentials(response.data?.access ?? '', response.data?.refresh ?? '');
    // return response.data?.access;
    return null;
  }
}
