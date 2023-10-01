import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_personal_project/core/resources/manager_assets.dart';
import 'package:my_personal_project/core/resources/manager_colors.dart';
import 'package:my_personal_project/core/resources/manager_font_sizes.dart';
import 'package:my_personal_project/core/resources/manager_font_weight.dart';
import 'package:my_personal_project/core/resources/manager_strings.dart';
import '../../../home/presentation/controller/home_controller.dart';

class ThisProfile extends StatelessWidget {
  const ThisProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        // HomeDataModel homeDataModel = controller.homeModel.data[index];

        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(ManagerStrings.profile,style: TextStyle(
              fontWeight: ManagerFontWeight.bold,
              fontSize: ManagerFontSizes.s20,
            ),),
          ),
          body: Container(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50,),
                Align(
                  alignment: AlignmentDirectional.topCenter,
                    child: Image.asset(ManagerAssets.profile,),
                ),
                SizedBox(height: 40,),
                Container(
                  margin: EdgeInsetsDirectional.only(end: 246),
                    child: Text(ManagerStrings.fullName,style: TextStyle(
                      fontWeight: ManagerFontWeight.regular,
                      fontSize: ManagerFontSizes.s20,
                    ),),
                ),
                SizedBox(height: 8,),
                Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffDFDFDF),
                  ),
                  child: Container(
                    margin: EdgeInsetsDirectional.only(start: 10),
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(controller.appSettingsSharedPreferences.userName,style: TextStyle(
                      fontSize: ManagerFontSizes.s20,
                      fontWeight: ManagerFontWeight.regular,
                    ),),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsetsDirectional.only(end: 290),
                  child: Text(ManagerStrings.email,style: TextStyle(
                    fontWeight: ManagerFontWeight.regular,
                    fontSize: ManagerFontSizes.s20,
                  ),),
                ),
                SizedBox(height: 8,),
                Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffDFDFDF),
                  ),
                  child: Container(
                    margin: EdgeInsetsDirectional.only(start: 10),
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(controller.appSettingsSharedPreferences.userEmail,style: TextStyle(
                      fontSize: ManagerFontSizes.s20,
                      fontWeight: ManagerFontWeight.regular,
                    ),),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsetsDirectional.only(end: 280),
                  child: Text(ManagerStrings.phone,style: TextStyle(
                    fontWeight: ManagerFontWeight.regular,
                    fontSize: ManagerFontSizes.s20,
                  ),),
                ),
                SizedBox(height: 8,),
                Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    color: ManagerColors.displayBackground,
                  ),
                  child: Container(
                    margin: EdgeInsetsDirectional.only(start: 10),
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(controller.appSettingsSharedPreferences.userPhone,style: TextStyle(
                      fontSize: ManagerFontSizes.s20,
                      fontWeight: ManagerFontWeight.regular,
                    ),),
                  ),
                ),
                SizedBox(height: 100,),
                Container(
                  alignment: AlignmentDirectional.center,
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.red.shade100,
                      borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.delete_sharp, size: 24,color: Colors.red,),
                      SizedBox(width: 4,),
                      Text(ManagerStrings.deleteAccount,style: TextStyle(
                        fontSize: ManagerFontSizes.s16,
                        fontWeight: ManagerFontWeight.regular,
                      ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
