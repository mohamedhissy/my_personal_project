import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
  late TextEditingController passwordTextEditingController;
  late TextEditingController phoneTextEditingController;
  late TextEditingController fullNameTextEditingController;

  @override
  void onInit() {
    passwordTextEditingController = TextEditingController();
    phoneTextEditingController = TextEditingController();
    fullNameTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    passwordTextEditingController.dispose();
    phoneTextEditingController.dispose();
    fullNameTextEditingController.dispose();
  }
}