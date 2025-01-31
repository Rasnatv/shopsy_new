import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:innsouls_flutter/app/modules/cart/views/cart_view.dart';
import 'package:innsouls_flutter/app/modules/filter/views/filter_view.dart';
import 'package:innsouls_flutter/app/modules/home/views/home_view.dart';
import 'package:innsouls_flutter/app/modules/profile/views/profile_view.dart';
import 'package:innsouls_flutter/app/modules/wishlist/views/wishlist_view.dart';

class LandingController extends GetxController {
  static LandingController get to => (Get.isRegistered<LandingController>() == false) ? Get.put<LandingController>(LandingController()) : Get.find();

  LandingItem selectedPage = LandingItem.home;

  void changePage({required LandingItem page}) {
    selectedPage = page;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Widget getPage() {
    switch (selectedPage) {
      case LandingItem.home:
        return HomeView();
      case LandingItem.wishlist:
        return WishlistView();
      case LandingItem.filter:
        return FilterView();
      case LandingItem.cart:
        return CartView();
      case LandingItem.profile:
        return ProfileView();
    }
  }

  void onPop() {
    if (selectedPage != LandingItem.home) {
      selectedPage = LandingItem.home;
      update();
      return;
    }
    Get.back();
  }
}

enum LandingItem { home, wishlist, filter, cart, profile }
