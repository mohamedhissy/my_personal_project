import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:my_personal_project/core/resources/manager_assets.dart';
import 'package:my_personal_project/core/resources/manager_colors.dart';
import 'package:my_personal_project/core/resources/manager_font_sizes.dart';
import 'package:my_personal_project/core/resources/manager_font_weight.dart';
import 'package:my_personal_project/core/resources/manager_height.dart';
import 'package:my_personal_project/core/resources/manager_raduis.dart';
 import 'package:my_personal_project/core/resources/manager_strings.dart';
import 'package:my_personal_project/core/resources/manager_width.dart';
 import 'package:my_personal_project/core/widgets/base_button.dart';
import '../../../../route/routes.dart';
import '../controller/auth_controller.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (controller) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: ManagerHeight.h50,
                  ),
                  child: Text(ManagerStrings.login,style:
                  TextStyle(
                    fontSize: ManagerFontSizes.s32,
                    fontWeight: ManagerFontWeight.regular,
                  ),
                  ),
                ),
              ),
              Column(
                children: [
                  Text(ManagerStrings.pleaseEnterYourPhoneAndPassword,
                    style: TextStyle(
                      color: ManagerColors.gray,
                    ),
                    ),
                  Text(ManagerStrings.toContinue,
                    style: TextStyle(
                        color: ManagerColors.gray
                    ),
                  ),
                ],
              ),
              SizedBox(height: ManagerHeight.h10,),
              Container(
                margin: EdgeInsets.only(
                    right :300,
                ),
                child: Text(ManagerStrings.phone,
                style: TextStyle(
                  fontSize: ManagerFontSizes.s20,
                  fontWeight: ManagerFontWeight.regular,
                ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: ManagerStrings.enterYourPhone,
                      hintStyle: TextStyle(
                        color: ManagerColors.gray,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(ManagerRadius.r10)),
                        borderSide: BorderSide(color: ManagerColors.primaryColor, width: ManagerWidth.w2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(ManagerRadius.r10)),
                        borderSide: BorderSide(color: ManagerColors.primaryColor, width: ManagerWidth.w2),
                      ),
                      filled: true,
                      fillColor: ManagerColors.bgColorTextFild,
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  right : 270,
                ),
                child: Text(ManagerStrings.password,
                  style: TextStyle(
                    fontSize: ManagerFontSizes.s20,
                    fontWeight: ManagerFontWeight.regular,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: ManagerStrings.enterYourPassword,
                      hintStyle: TextStyle(
                        color: ManagerColors.gray,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(ManagerRadius.r10)),
                        borderSide: BorderSide(color: ManagerColors.primaryColor, width: ManagerWidth.w2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(ManagerRadius.r10)),
                        borderSide: BorderSide(color: ManagerColors.primaryColor, width: ManagerWidth.w2),
                      ),
                      filled: true,
                      fillColor: ManagerColors.bgColorTextFild,
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 200),
                child: Text(ManagerStrings.forgetPassword,
                style: TextStyle(
                  fontSize: ManagerFontSizes.s16,
                  fontWeight: ManagerFontWeight.regular,
                ),
                ),
              ),
              SizedBox(height: ManagerHeight.h20,),
              Container(
                width: ManagerWidth.w360,
                child: BaseButton(onPressed: (){},
                title: ManagerStrings.login,
                  textStyle: TextStyle(
                    fontSize: ManagerFontSizes.s18,
                    fontWeight: ManagerFontWeight.bold,
                    color: ManagerColors.white,
                  ),
                ),
              ),
              SizedBox(height: ManagerHeight.h14,),
              Text('OR',style:
              TextStyle(
                fontWeight: ManagerFontWeight.regular,
              ),
              ),
             Image.asset(ManagerAssets.facebook,width: ManagerWidth.w390,height: ManagerHeight.h60,),
             SizedBox(height: ManagerHeight.h14,),
             Image.asset(ManagerAssets.google,width: ManagerWidth.w390,height: ManagerHeight.h60,),
              SizedBox(height: ManagerHeight.h20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(ManagerStrings.dontHaveAccount,
                  style: TextStyle(
                    fontSize: ManagerFontSizes.s16,
                    fontWeight: ManagerFontWeight.regular,
                  ),
                  ),
                  SizedBox(width: ManagerWidth.w8,),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, Routes.registerView);
                    },
                    child: Text(
                      ManagerStrings.signUp,
                      style: TextStyle(
                        color: ManagerColors.primaryColor,
                        fontSize: ManagerFontSizes.s16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }
    );
  }
}

