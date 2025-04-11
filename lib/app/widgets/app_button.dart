import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:innsouls_flutter/app/common/style/app_colors.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final Color? buttonColor;
  final double? borderRadius;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final bool? isDisabled;
  const AppButton({super.key, this.onTap, this.height, this.width, this.buttonColor, this.borderRadius, this.child, this.padding, this.isDisabled});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: buttonColor?.withAlpha(isDisabled == true ? 155 : 255) ?? AppColors.kPrimary.withAlpha(isDisabled == true ? 160 : 255),
        borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: AppColors.grayBackground.withValues(alpha: 0.2 * 255),
            onTap: isDisabled == true ? null : onTap,
            child: Container(
              padding: padding ?? EdgeInsets.all(context.isPortrait ? 15.h : 12.w),
              child: Center(child: child),
            ),
          ),
        ),
      ),
    );
  }
}
