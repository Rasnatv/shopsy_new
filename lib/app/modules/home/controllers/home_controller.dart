import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => (Get.isRegistered<HomeController>() == false) ? Get.put<HomeController>(HomeController()) : Get.find();

  TextEditingController? searchController;
  @override
  void onInit() {
    searchController = TextEditingController();
    super.onInit();
  }


  @override
  void onClose() {
    searchController?.dispose();
    super.onClose();
  }

  void clearSearchField() {
    searchController?.clear();
    update();
  }
}
