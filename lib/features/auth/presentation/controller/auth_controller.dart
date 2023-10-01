import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_personal_project/core/resources/manager_colors.dart';
import 'package:my_personal_project/core/widgets/helpers.dart';
import 'package:my_personal_project/features/auth/data/data_source/auth_api_controller.dart';

import '../../../../route/routes.dart';

class AuthController extends GetxController with Helpers{
  late TextEditingController passwordTextEditingController;
  late TextEditingController emailTextEditingController;
  late TextEditingController fullNameTextEditingController;
  late TextEditingController confirmPasswordTextEditingController;
  late TextEditingController phoneTextEditingController;
  AuthApiController authApiController = AuthApiController();

  @override
  void onInit() {
    passwordTextEditingController = TextEditingController();
    emailTextEditingController = TextEditingController();
    fullNameTextEditingController = TextEditingController();
    confirmPasswordTextEditingController = TextEditingController();
    phoneTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    passwordTextEditingController.dispose();
    emailTextEditingController.dispose();
    fullNameTextEditingController.dispose();
    confirmPasswordTextEditingController.dispose();
    phoneTextEditingController.dispose();
  }

  performLogin(BuildContext context) async {
    if(checkData(context)){
      print('object');
      // showDialog(context: context, builder: (context){
      //   return Center(
      //     child: CircularProgressIndicator(color: ManagerColors.primaryColor, backgroundColor: ManagerColors.white,),
      //   );
      // });
      if(await authApiController.login(
          email: emailTextEditingController.text.toString(),
          password: passwordTextEditingController.text.toString(),
      )
      )
      {
        showSnackBar(context: context, message: 'Login Successfully');
        Get.back();
        Get.offAllNamed(Routes.homeView);
      }else{
        showSnackBar(context: context, message: 'Login Faild', error: true);
      }
      Get.back();
    }
    update();
  }
  performRegister(BuildContext context) async {
    if(checkRegisterData(context)){
      // showDialog(context: context, builder: (context){
      //   return Center(
      //     child: CircularProgressIndicator(color: ManagerColors.primaryColor, backgroundColor: ManagerColors.white,),
      //   );
      // });
      if(await authApiController.register(
        name: fullNameTextEditingController.text.toString(),
        email: emailTextEditingController.text.toString(),
        password: passwordTextEditingController.text.toString(),
        confirmPassword: confirmPasswordTextEditingController.text.toString(),
        phone: phoneTextEditingController.text.toString(),
      )
      ){
        showSnackBar(context: context, message: 'Register Successfully');
        Get.back();
        Get.offAllNamed(Routes.loginView);
      }
      Get.back();
    }
    update();
  }

  bool checkData(BuildContext context){
    if(emailTextEditingController.text.isEmpty){
      showSnackBar(context: context, message: 'Email Is required', error: true,);
      return false;
    }

    if(passwordTextEditingController.text.isEmpty){
      showSnackBar(context: context, message: 'Password Is required', error: true,);
      return false;
    }


    return true;
  }

  bool checkRegisterData(BuildContext context){

    if(fullNameTextEditingController.text.isEmpty){
      showSnackBar(context: context, message: 'Full Name Is required', error: true,);
      return false;
    }

    if(emailTextEditingController.text.isEmpty){
      showSnackBar(context: context, message: 'Email Is required', error: true,);
      return false;
    }

    if(passwordTextEditingController.text.isEmpty){
      showSnackBar(context: context, message: 'Password Is required', error: true,);
      return false;
    }

    if(passwordTextEditingController.text.length < 8){
      showSnackBar(context: context, message: 'Password must be at lest 8 charcters', error: true,);
      return false;
    }

    if(phoneTextEditingController.text.length < 8){
      showSnackBar(context: context, message: 'Password must be at lest 8 charcters', error: true,);
      return false;
    }

    if(passwordTextEditingController.text != confirmPasswordTextEditingController.text){
      showSnackBar(context: context, message: 'Password is not matched', error: true);
      return false;
    }

    return true;
  }

}


