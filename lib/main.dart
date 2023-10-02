import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'config/dependancy_injection.dart';
import 'config/locale/locale_settings.dart';
import 'core/constants.dart';
import 'core/resources/manager_assets.dart';
import 'route/routes.dart';

main() async{
  await initModule();
  runApp(
      EasyLocalization(
          supportedLocales: LocaleSettings().locales,
          path: ManagerPaths.translationsPath,
          startLocale: localeSettings.defaultLocale,
          fallbackLocale: localeSettings.defaultLocale,


          child: const MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize:
        Size(Constants.designDeviceWidth, Constants.designDeviceHeight),
      builder: (context,child) {
        return GetMaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
          ),
          initialRoute: Routes.splashScreen,
          onGenerateRoute: RouteGenerator.getRoute,
        );
      }
    );
  }
}
