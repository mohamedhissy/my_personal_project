import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_personal_project/features/home/presentation/controller/home_controller.dart';
import '../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import '../features/auth/presentation/controller/auth_controller.dart';
import '../features/splash/presentation/controller/splash_controller.dart';

initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSettingsSharedPreferences().initPreferences();
}

initAuth() {
  disposeSplash();
  Get.put<AuthController>(AuthController());
}

disposeAuth() {
  disposeSplash();
  Get.delete<AuthController>();
}

initSplash() {
  Get.put<SplashController>(SplashController());
}

disposeSplash() {
  Get.delete<SplashController>();
}

initHome() {
  Get.put<HomeController>(HomeController());
  disposeSplash();
  disposeAuth();
}

initProfile() {
  Get.put<AuthController>(AuthController());
  disposeSplash();
  disposeAuth();
}

disposeHome() {}
