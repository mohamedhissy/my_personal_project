import 'package:flutter/material.dart';
import 'package:my_personal_project/core/resources/manager_assets.dart';
import 'package:my_personal_project/core/resources/manager_colors.dart';
import 'package:my_personal_project/core/resources/manager_font_sizes.dart';
import 'package:my_personal_project/core/resources/manager_font_weight.dart';
import 'package:my_personal_project/core/resources/manager_height.dart';
import 'package:my_personal_project/core/resources/manager_raduis.dart';
import 'package:my_personal_project/core/resources/manager_strings.dart';
import 'package:my_personal_project/route/routes.dart';

import '../../../../core/widgets/base_button.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Align(
        alignment: Alignment.centerLeft,
        child: Container(

          padding: EdgeInsets.symmetric(horizontal: 15),

          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.only(top: 100,),
                  decoration: BoxDecoration(
                    color: ManagerColors.primaryColor,
                    borderRadius: BorderRadius.circular(ManagerRadius.r32),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset(
                          ManagerAssets.splash1,
                        ),
                      ),
                      SizedBox(height: ManagerHeight.h0,),
                      Container(
                        child: Image.asset(
                          ManagerAssets.splash2,
                        ),
                      ),
                      Text(ManagerStrings.appName,style: TextStyle(
                        color: ManagerColors.white,
                        fontSize: ManagerFontSizes.s16,
                        fontWeight: ManagerFontWeight.bold,
                      ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: ManagerHeight.h34,),
                  Align(
                    alignment: Alignment.centerLeft,
                      child: Text(ManagerStrings.findYour,style: TextStyle(
                        color: ManagerColors.black,
                        fontSize: ManagerFontSizes.s32,
                        fontWeight: ManagerFontWeight.bold,
                      ),
                      ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                      child: Text(ManagerStrings.homeService,style: TextStyle(
                        color: ManagerColors.black,
                        fontSize: ManagerFontSizes.s32,
                        fontWeight: ManagerFontWeight.bold,
                      ),
                      ),
                  ),
              SizedBox(height: ManagerHeight.h50,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(ManagerStrings.selectLanguage,style: TextStyle(
                  color: ManagerColors.black,
                  fontSize: ManagerFontSizes.s26,
                  fontWeight: ManagerFontWeight.regular,
                ),
                ),
              ),
              SizedBox(height: ManagerHeight.h34,),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(ManagerStrings.english,style: TextStyle(
                      color: ManagerColors.black,
                      fontSize: ManagerFontSizes.s18,
                      fontWeight: ManagerFontWeight.regular
                    ),
                    ),
                       Radio(
                        value: 1,
                        groupValue: selectedValue,
                        onChanged: (value){
                          setState(() {
                            selectedValue = 1;
                          });
                        },
                        activeColor: ManagerColors.primaryColor,
                      ),
                  ],
                ),
              ),
              SizedBox(height: ManagerHeight.h12,),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 50),
                  height: 2,
                  width: 350,
                  color: ManagerColors.gray,
                ),
              ),
              SizedBox(height: ManagerHeight.h24,),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(ManagerStrings.arabic,style: TextStyle(
                      color: ManagerColors.black,
                      fontSize: ManagerFontSizes.s18,
                      fontWeight: ManagerFontWeight.regular
                    ),
                    ),
                       Radio(
                        value: 2,
                        groupValue: selectedValue,
                        onChanged: (value){
                          setState(() {
                            selectedValue = 2;
                          });
                        },
                        activeColor: ManagerColors.primaryColor,
                      ),
                  ],
                ),
              ),
              SizedBox(height: ManagerHeight.h12,),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 50),
                  height: 2,
                  width: 350,
                  color: ManagerColors.gray,
                ),
              ),
              Spacer(),
              Text(ManagerStrings.byCreatingAnAccountYouAgreeToOur,
              style: TextStyle(
                color: ManagerColors.gray,
              ),
              ),
              Text(ManagerStrings.termAndConditions,
              style: TextStyle(
                color: ManagerColors.primaryColor,
              ),
              ),
              Spacer(flex: 3,),
              Column(
                children: [
                  BaseButton(onPressed: (){
                    Navigator.pushNamed(context, Routes.outBoardingScreen);
                  },
                  title: ManagerStrings.enter,
                    textStyle: TextStyle(
                      fontSize: ManagerFontSizes.s18,
                      color: ManagerColors.white,
                      fontWeight: ManagerFontWeight.bold,
                    ),
                  )
                ],
              ),
              Spacer(flex: 7,),
            ],
          ),
        ),
      ),
    );
  }
}
