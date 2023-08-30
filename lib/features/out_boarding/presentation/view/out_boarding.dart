import 'package:flutter/material.dart';
import 'package:my_personal_project/core/resources/manager_assets.dart';
import 'package:my_personal_project/core/resources/manager_colors.dart';
import 'package:my_personal_project/core/resources/manager_font_sizes.dart';
import 'package:my_personal_project/core/resources/manager_height.dart';
import 'package:my_personal_project/core/resources/manager_strings.dart';
import 'package:my_personal_project/core/resources/manager_width.dart';
import 'package:my_personal_project/core/widgets/base_button.dart';
import 'package:my_personal_project/features/out_boarding/presentation/view/widget/out_boarding_content.dart';
import 'package:my_personal_project/features/out_boarding/presentation/view/widget/progress_indicator.dart';

import '../../../../route/routes.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({super.key});

  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {

  late PageController _pageController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Visibility(
          visible: isNotFirstPage(),
          child: IconButton(
            onPressed: (){
              _pageController.previousPage(
                  duration: Duration(microseconds: 300),
                  curve: Curves.fastLinearToSlowEaseIn
              );
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
            ),
          ),
        ),
        actions: [
          Container(
            width: ManagerWidth.w100,
            height: ManagerHeight.h40,
            margin: EdgeInsetsDirectional.only(end: ManagerWidth.w12),
            child: Visibility(
              visible: isNotLastPage(),
              child: BaseButton(onPressed: (){
                _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                );
              },
                width: ManagerWidth.w10,
                height: ManagerHeight.h10,
                title: ManagerStrings.next,
                textStyle: TextStyle(
                  color: ManagerColors.black,
                  fontSize: ManagerFontSizes.s16,
                ),
                isVisibleIcon: false,
                bgColor: ManagerColors.transparent,
                elevation: 0,
              ),
              replacement: BaseButton(onPressed: (){
                Navigator.pushReplacementNamed(context, Routes.loginView);
              },
                width: ManagerWidth.w10,
                height: ManagerHeight.h10,
                title: ManagerStrings.start,
                textStyle: TextStyle(
                  color: ManagerColors.black,
                  fontSize: ManagerFontSizes.s16,
                ),
                isVisibleIcon: false,
                bgColor: ManagerColors.transparent,
                elevation: 0,
              ),
            ),
          ),
        ],
      ),
     body: Container(
       width: double.infinity,
       margin: EdgeInsets.symmetric(
         horizontal: ManagerWidth.w30,
         vertical: ManagerHeight.h34,
       ),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Expanded(
             child: PageView(
             scrollDirection: Axis.horizontal,
             controller: _pageController,
             onPageChanged: (int value){
             setState(() {
               _currentPageIndex = value;
             });
             },
               children: [
                 OutBoardingContent(
                   image: ManagerAssets.outBoarding,
                   title: ManagerStrings.easyProcess,
                   subTitle: ManagerStrings.subTitle,
                 ),
                 OutBoardingContent(
                   image: ManagerAssets.outBoarding2,
                   title: ManagerStrings.findYour,
                   subTitle: ManagerStrings.subTitle2,
                 ),
                 OutBoardingContent(
                   image: ManagerAssets.outBoarding3,
                   title: ManagerStrings.allInOnePlace,
                   subTitle: ManagerStrings.subTitle3,
                 ),
               ],
           ),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               progressIndicator(
                 color: isFirstPage()
                     ? ManagerColors.gray
                     : ManagerColors.progressIndicatorColor,
                 width: isFirstPage() ? ManagerWidth.w20 : ManagerWidth.w8,
               ),
               progressIndicator(
                 color: isSecondPage()
                     ? ManagerColors.gray
                     : ManagerColors.progressIndicatorColor,
                 width: isSecondPage() ? ManagerWidth.w20 : ManagerWidth.w8,
               ),
               progressIndicator(
                 color: isLastPage()
                     ? ManagerColors.gray
                     : ManagerColors.progressIndicatorColor,
                 width: isLastPage() ? ManagerWidth.w20 : ManagerWidth.w8,
               ),
             ],
           ),
           SizedBox(height: ManagerHeight.h40),
           Padding(padding: EdgeInsets.symmetric(
               horizontal: ManagerWidth.w40
           ),
             child: Visibility(
               visible: isLastPage(),
               child : BaseButton(onPressed: (){
                 Navigator.pushReplacementNamed(context, Routes.loginView);
               },
                 textStyle: TextStyle(
                   fontSize: ManagerFontSizes.s16,
                   color: ManagerColors.white,
                 ),
               ),
               replacement: BaseButton(onPressed: (){
                 _pageController.animateToPage(2,
                     duration: Duration(milliseconds: 100),
                     curve: Curves.fastLinearToSlowEaseIn
                 );
               },
                 title: ManagerStrings.skip,
                 textStyle: TextStyle(
                   fontSize: ManagerFontSizes.s16,
                   color: ManagerColors.white,
                 ),
               ),
             )
           ),
         ],
       ),
     ),
    );
  }
  bool isNotFirstPage() {
    return _currentPageIndex != 0;
  }

  bool isFirstPage() {
    return _currentPageIndex == 0;
  }

  bool isSecondPage() {
    return _currentPageIndex == 1;
  }

  bool isLastPage() {
    return _currentPageIndex == 2;
  }

  bool isNotLastPage() {
    return _currentPageIndex != 2;
  }
}
