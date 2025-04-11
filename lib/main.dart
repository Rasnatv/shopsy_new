import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:innsouls_flutter/app/common/style/app_theme.dart';
import 'package:innsouls_flutter/app/core/utils/initializer.dart';
import 'package:innsouls_flutter/app/routes/app_pages.dart';

void main() => Initializer.init(() => runApp(const InnsoulsApp()));

class InnsoulsApp extends StatelessWidget {
  const InnsoulsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: context.isPortrait ? const Size(375, 812) : const Size(812, 375),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "shopsy_new",
            navigatorObservers: [GetObserver()],
            navigatorKey: Get.key,
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
            initialBinding: InitialBindings(),
            theme: AppTheme.themeData,
            builder: (_, child) => child ?? const SizedBox.shrink(),
          );
        });
  }
}
