import 'package:flutter/material.dart';
import 'package:my_personal_project/core/resources/manager_assets.dart';
import 'package:my_personal_project/core/resources/manager_colors.dart';
import 'package:my_personal_project/core/resources/manager_font_weight.dart';
import 'package:my_personal_project/core/resources/manager_height.dart';
import 'package:my_personal_project/core/resources/manager_strings.dart';

import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../route/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, Routes.onBoarding);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: AlignmentDirectional.center,
          color: ManagerColors.primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(ManagerAssets.splash1),
              ),
              SizedBox(height: ManagerHeight.h0,),
              Container(
                child: Image.asset(ManagerAssets.splash2),
              ),
              Text(ManagerStrings.appName,style: TextStyle(
                color: ManagerColors.white,
                fontSize: ManagerFontSizes.s26,
                fontWeight: ManagerFontWeight.bold,
              ),
              ),
            ],
          ),
          ),
    );
  }
}

// return Scaffold(
// body: Container(
// width: double.infinity,
// height: double.infinity,
// alignment: Alignment.center,
// decoration: BoxDecoration(
// gradient: LinearGradient(colors: [
// ManagerColors.primaryColor,
// ManagerColors.secondaryColor,
// ])),
// child: Text(
// ManagerStrings.appName,
// style: TextStyle(
// fontSize: ManagerFontSizes.s26,
// color: ManagerColors.white,
// ),
// ),
// ),
// );