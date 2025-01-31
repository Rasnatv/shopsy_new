import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:innsouls_flutter/app/common/style/app_colors.dart';
import 'package:innsouls_flutter/app/common/style/app_text_style.dart';
import 'package:innsouls_flutter/app/widgets/custom_image_widget.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(9.r),
          boxShadow: [BoxShadow(offset: Offset(0, 5), blurRadius: 10.r, color: AppColors.black.withValues(alpha: .1))]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.w),
        child: LayoutBuilder(
          builder: (context, constraints) => Column(
            children: [
              SizedBox(
                height: constraints.maxHeight * .8,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 6.w, crossAxisSpacing: 6.w, childAspectRatio: 1),
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(9.r)),
                    child: LayoutBuilder(
                        builder: (context, constraints) =>
                            CustomImageWidget(imageUrl: '', width: constraints.maxWidth, height: constraints.maxHeight)),
                  ),
                  itemCount: 4,
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * .2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Name', style: AppTextStyle.rTextRalewayBlack17w700),
                    Container(
                      padding: EdgeInsets.all(6.w),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(6.r), color: AppColors.shimmerGray),
                      child: Text(
                        '257',
                        style: AppTextStyle.rTextRalewayBlack12w700,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
