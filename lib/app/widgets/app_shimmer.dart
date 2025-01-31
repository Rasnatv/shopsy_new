import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';

import 'package:innsouls_flutter/app/common/style/app_colors.dart';

class AppShimmer extends StatelessWidget {
  const AppShimmer({super.key, this.width, this.height, this.shape});
  final double? width;
  final double? height;
  final BoxShape? shape;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: shape == BoxShape.circle ? BorderRadius.circular(width ?? 0 / 2) : BorderRadius.circular(0),
      child: SizedBox(
          height: height,
          width: width,
          child: Shimmer.fromColors(baseColor: AppColors.shimmerGray, highlightColor: AppColors.white, child: const ColoredBox(color: AppColors.white))),
    );
  }
}
