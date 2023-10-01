import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_personal_project/core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import 'package:my_personal_project/features/home/data/data_source/home_api_controller.dart';
import 'package:my_personal_project/features/home/presentation/model/home_model.dart';

import '../../../../core/constants.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_width.dart';
import '../../../../route/routes.dart';

class HomeController extends GetxController {
  HomeModel homeModel = HomeModel(data: [], success: true, status: 200);
  HomeApiController homeApiController = HomeApiController();
  AppSettingsSharedPreferences appSettingsSharedPreferences =
      AppSettingsSharedPreferences();

  @override
  void onInit() {
    super.onInit();
    readHome();
  }

  readHome() async {
    homeModel = await homeApiController.home(context: Get.context!);
    update();
  }


  String productPrice(String price, String unit) {
    return ' \$ $price \\$unit'.toUpperCase();
  }

  String productRating(String rate) {
    return '($rate)';
  }

  int bestItemsCard(int length) {
    return length > 4 ? 4 : length;
  }



  Widget image({required String courseAvatar, String? defaultImage}) {
    if (isURLValid(courseAvatar)) {
      return Image.network(
        courseAvatar,
        fit: BoxFit.fill,
        width: double.infinity,
      );
    }
    return Image.asset(
      defaultImage ?? ManagerAssets.home1,
      fit: BoxFit.fill,
      width: ManagerWidth.w156,
      height: ManagerHeight.h148,
    );
  }
}
