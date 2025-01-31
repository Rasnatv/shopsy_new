import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

abstract class Initializer {
  static void init(VoidCallback runApp) {
    runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();
      await GetStorage.init();
      FlutterError.onError = (details) {
        FlutterError.dumpErrorToConsole(details);
        Get.printInfo(info: details.stack.toString());
      };
      _initScreenPreference;
      runApp();
      _initFirebaseServices();
    }, (error, stack) {
      Get.printInfo(
          info: 'runZonedGuarded: ${error.toString()}'
              '\nrunZonedGuarded StackTrace: ${stack.toString()}');
    });
  }

  static void _initScreenPreference() async {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
    ));
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  static void _initFirebaseServices() async {}

  static Future<void> getFirebaseToken() async {}
}

class InitialBindings extends Bindings {
  @override
  void dependencies() {}
}
