import 'package:flutter/material.dart';
import 'package:innsouls_flutter/app/modules/home/widgets/category_tile.dart';

class CategoryGridList extends StatelessWidget {
  const CategoryGridList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 8.w, crossAxisSpacing: 8.w, childAspectRatio: .85),
      itemBuilder: (context, index) => CategoryTile(),
      itemCount: 10,
    );
  }
}
