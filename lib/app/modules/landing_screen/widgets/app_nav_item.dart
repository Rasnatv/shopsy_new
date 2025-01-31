
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:innsouls_flutter/app/common/style/app_colors.dart';
import 'package:innsouls_flutter/app/common/style/dimens.dart';
import 'package:innsouls_flutter/app/modules/landing_screen/controllers/landing_controller.dart';
import 'package:innsouls_flutter/app/widgets/custom_image_widget.dart';

class AppNavItem extends GetWidget<LandingController> {
  const AppNavItem({super.key, required this.value, required this.iconPath, this.padding});
  final LandingItem value;
  final String iconPath;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LandingController>(builder: (context) {
      return InkWell(
        onTap: () => controller.changePage(page: value),
        child: Padding(
          padding: padding ?? EdgeInsets.zero,
          child: SizedBox(
            height: 60.sp,
            width: 60.sp,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageWidget(
                      height: 24.sp,
                      width: 24.sp,
                      imageUrl: iconPath,
                      color: controller.selectedPage == value ? AppColors.black : AppColors.kPrimary),
                  Dimens.kSizedBoxH6,
                  Container(
                      height: 3.sp,
                      width: 12.sp,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          color: controller.selectedPage == value ? AppColors.black : AppColors.transparent))
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
