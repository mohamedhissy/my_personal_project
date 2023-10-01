

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_personal_project/core/resources/manager_assets.dart';
import 'package:my_personal_project/core/resources/manager_colors.dart';
import 'package:my_personal_project/core/resources/manager_font_sizes.dart';
import 'package:my_personal_project/core/resources/manager_font_weight.dart';
import 'package:my_personal_project/core/resources/manager_strings.dart';
import 'package:my_personal_project/features/auth/presentation/controller/auth_controller.dart';

import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_raduis.dart';
import '../../../../core/resources/manager_width.dart';
import '../../../../core/widgets/base_button.dart';
import '../../../../route/routes.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        builder: (controller) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            extendBodyBehindAppBar: true,
            body: Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 16,),
                  Text('Register', style: TextStyle(
                    fontSize: ManagerFontSizes.s32,
                    fontWeight: ManagerFontWeight.regular,
                  ),
                  ),
                  SizedBox(height: 32,),
                  Text(ManagerStrings.pleaseEnterYourPhoneAndPassword,
                    style: TextStyle(
                      color: ManagerColors.gray,
                    ),
                  ),
                  Text(ManagerStrings.toContinue, style: TextStyle(
                    color: ManagerColors.gray,
                  ),
                  ),
                  SizedBox(height: 20,),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        right: 270,
                      ),
                      child: Text(ManagerStrings.fullName,style: TextStyle(
                        fontSize: ManagerFontSizes.s8,
                        fontWeight: ManagerFontWeight.regular,
                      ),
                      ),
                    ),
                  ),
                  Center(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: controller.fullNameTextEditingController,
                      decoration: InputDecoration(
                        hintText: ManagerStrings.enterYourFullName,
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
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        right: 300,
                      ),
                      child: Text(ManagerStrings.email,style: TextStyle(
                        fontSize: ManagerFontSizes.s8,
                        fontWeight: ManagerFontWeight.regular,
                      ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        controller: controller.emailTextEditingController,
                        decoration: InputDecoration(
                          hintText: ManagerStrings.enterYourEmail,
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
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        right: 270,
                      ),
                      child: Text(ManagerStrings.password,style: TextStyle(
                        fontSize: ManagerFontSizes.s8,
                        fontWeight: ManagerFontWeight.regular,
                      ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        controller: controller.passwordTextEditingController,
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
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        right: 270,
                      ),
                      child: Text(ManagerStrings.confirmPassword,style: TextStyle(
                        fontSize: ManagerFontSizes.s8,
                        fontWeight: ManagerFontWeight.regular,
                      ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        controller: controller.confirmPasswordTextEditingController,
                        decoration: InputDecoration(
                          hintText: ManagerStrings.enterYourConfirmPassword,
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
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        right: 270,
                      ),
                      child: Text(ManagerStrings.phone,style: TextStyle(
                        fontSize: ManagerFontSizes.s8,
                        fontWeight: ManagerFontWeight.regular,
                      ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        controller: controller.phoneTextEditingController,
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
                  SizedBox(height: 2,),
                  Container(
                  width: ManagerWidth.w360,
                  child: BaseButton(onPressed: (){
                    controller.performRegister(context);
                  },
                    title: ManagerStrings.register,
                    textStyle: TextStyle(
                      fontSize: ManagerFontSizes.s18,
                      fontWeight: ManagerFontWeight.bold,
                      color: ManagerColors.white,
                    ),
                  ),
                ),
                  SizedBox(height: 12,),
                  // Text('OR',style: TextStyle(
                  //   fontWeight: ManagerFontWeight.regular,
                  // ),),
                  // SizedBox(height: 12,),
                  // Image.asset(ManagerAssets.facebook, width: ManagerWidth.w390, height: ManagerHeight.h60,),
                  // SizedBox(height: 6,),
                  // Image.asset(ManagerAssets.google, width: ManagerWidth.w390, height: ManagerHeight.h60,),
                  // SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(ManagerStrings.haveAccount,style: TextStyle(
                        fontWeight: ManagerFontWeight.regular,
                        fontSize: ManagerFontSizes.s16,
                      ),
                      ),
                      SizedBox(width: 12,),
                      GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.loginView);
                      },
                      child: Text(
                        ManagerStrings.signIn,
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
            ),
          );
        }
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/src/simple/get_state.dart';
// import '../../../../core/resources/manager_assets.dart';
// import '../../../../core/resources/manager_colors.dart';
// import '../../../../core/resources/manager_font_sizes.dart';
// import '../../../../core/resources/manager_font_weight.dart';
// import '../../../../core/resources/manager_height.dart';
// import '../../../../core/resources/manager_raduis.dart';
// import '../../../../core/resources/manager_strings.dart';
// import '../../../../core/resources/manager_width.dart';
// import '../../../../core/widgets/base_button.dart';
// import '../../../../route/routes.dart';
// import '../controller/auth_controller.dart';
//
// class RegisterView extends StatelessWidget {
//   const RegisterView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<AuthController>(
//         builder: (controller) {
//           return Scaffold(
//             body: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Align(
//                   //widthFactor: 0,
//                   heightFactor: 0,
//                   child: Container(
//                     margin: EdgeInsets.symmetric(
//                       vertical: ManagerHeight.h50,
//                     ),
//                     child: Text(ManagerStrings.register,style:
//                     TextStyle(
//                       fontSize: ManagerFontSizes.s32,
//                       fontWeight: ManagerFontWeight.regular,
//                     ),
//                     ),
//                   ),
//                 ),
//                 // Column(
//                 //   children: [
//                 //     Text(ManagerStrings.pleaseEnterYourPhoneAndPassword,
//                 //       style: TextStyle(
//                 //         color: ManagerColors.gray,
//                 //       ),
//                 //     ),
//                 //     Text(ManagerStrings.toContinue,
//                 //       style: TextStyle(
//                 //           color: ManagerColors.gray
//                 //       ),
//                 //     ),
//                 //   ],
//                 // ),
//                 SizedBox(height: ManagerHeight.h50,),
//                 Container(
//                   margin: EdgeInsets.only(
//                     right :260,
//                   ),
//                   child: Text(ManagerStrings.fullName,
//                     style: TextStyle(
//                       fontSize: ManagerFontSizes.s20,
//                       fontWeight: ManagerFontWeight.regular,
//                     ),
//                   ),
//                 ),
//                 Center(
//                   child: Padding(
//                     padding: EdgeInsets.all(20),
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: ManagerStrings.enterYourFullName,
//                         hintStyle: TextStyle(
//                           color: ManagerColors.gray,
//                         ),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(ManagerRadius.r10)),
//                           borderSide: BorderSide(color: ManagerColors.gray, width: ManagerWidth.w2),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(ManagerRadius.r10)),
//                           borderSide: BorderSide(color: ManagerColors.gray, width: ManagerWidth.w2),
//                         ),
//                         filled: true,
//                         fillColor: ManagerColors.bgColorTextFild,
//                         contentPadding: EdgeInsets.all(10.0),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(
//                     right :300,
//                   ),
//                   child: Text(ManagerStrings.phone,
//                     style: TextStyle(
//                       fontSize: ManagerFontSizes.s20,
//                       fontWeight: ManagerFontWeight.regular,
//                     ),
//                   ),
//                 ),
//                 Center(
//                   child: Padding(
//                     padding: EdgeInsets.all(20),
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: ManagerStrings.enterYourPhone,
//                         hintStyle: TextStyle(
//                           color: ManagerColors.gray,
//                         ),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(ManagerRadius.r10)),
//                           borderSide: BorderSide(color: ManagerColors.gray, width: ManagerWidth.w2),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(ManagerRadius.r10)),
//                           borderSide: BorderSide(color: ManagerColors.gray, width: ManagerWidth.w2),
//                         ),
//                         filled: true,
//                         fillColor: ManagerColors.bgColorTextFild,
//                         contentPadding: EdgeInsets.all(10.0),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(
//                     right : 270,
//                   ),
//                   child: Text(ManagerStrings.password,
//                     style: TextStyle(
//                       fontSize: ManagerFontSizes.s20,
//                       fontWeight: ManagerFontWeight.regular,
//                     ),
//                   ),
//                 ),
//                 Center(
//                   child: Padding(
//                     padding: EdgeInsets.all(20),
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: ManagerStrings.enterYourPassword,
//                         hintStyle: TextStyle(
//                           color: ManagerColors.gray,
//                         ),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(ManagerRadius.r10)),
//                           borderSide: BorderSide(color: ManagerColors.gray, width: ManagerWidth.w2),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(ManagerRadius.r10)),
//                           borderSide: BorderSide(color: ManagerColors.gray, width: ManagerWidth.w2),
//                         ),
//                         filled: true,
//                         fillColor: ManagerColors.bgColorTextFild,
//                         contentPadding: EdgeInsets.all(10.0),
//                       ),
//                     ),
//                   ),
//                 ),
//                  SizedBox(height: ManagerHeight.h2,),
//                 Container(
//                   width: ManagerWidth.w360,
//                   child: BaseButton(onPressed: (){},
//                     title: ManagerStrings.register,
//                     textStyle: TextStyle(
//                       fontSize: ManagerFontSizes.s18,
//                       fontWeight: ManagerFontWeight.bold,
//                       color: ManagerColors.white,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: ManagerHeight.h14,),
//                 Text('OR',style:
//                 TextStyle(
//                   fontWeight: ManagerFontWeight.regular,
//                 ),
//                 ),
//                 Image.asset(ManagerAssets.facebook,width: ManagerWidth.w390,height: ManagerHeight.h60,),
//                 SizedBox(height: ManagerHeight.h14,),
//                 Image.asset(ManagerAssets.google,width: ManagerWidth.w390,height: ManagerHeight.h60,),
//                 SizedBox(height: ManagerHeight.h20,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(ManagerStrings.haveAccount,
//                       style: TextStyle(
//                         fontSize: ManagerFontSizes.s16,
//                         fontWeight: ManagerFontWeight.regular,
//                       ),
//                     ),
//                     SizedBox(width: ManagerWidth.w8,),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.pushNamed(
//                             context, Routes.loginView);
//                       },
//                       child: Text(
//                         ManagerStrings.signIn,
//                         style: TextStyle(
//                           color: ManagerColors.primaryColor,
//                           fontSize: ManagerFontSizes.s16,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           );
//         }
//     );
//   }
// }
//
