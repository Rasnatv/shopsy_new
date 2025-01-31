import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:innsouls_flutter/app/common/style/app_text_style.dart';
import 'package:innsouls_flutter/app/common/style/dimens.dart';
import 'package:innsouls_flutter/app/modules/home/widgets/category_grid_list.dart';
import 'package:innsouls_flutter/app/modules/home/widgets/home_search_field.dart';
import 'package:innsouls_flutter/app/modules/home/widgets/section_title_bar.dart';
import 'package:innsouls_flutter/app/widgets/dismiss_keyboard_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    if (Get.isRegistered<HomeController>() == false) Get.put<HomeController>(HomeController());
    return DismissKeyboard(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Column(
          children: [
            Dimens.kSizedBoxH10,
            SafeArea(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Innsouls', style: AppTextStyle.rTextNunitoBlack20w600), Dimens.kSizedBoxW10, HomeSearchFiled()])),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [SectionTitleBar(title: 'Categories', onSeeAll: () {}), CategoryGridList()],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
