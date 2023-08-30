import 'package:flutter/material.dart';
import 'package:my_personal_project/core/resources/manager_font_weight.dart';
import 'package:my_personal_project/core/resources/manager_width.dart';
import '../../../../../core/resources/manager_assets.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_font_sizes.dart';
import '../../../../../core/resources/manager_height.dart';
import '../../../../../core/resources/manager_strings.dart';


class OutBoardingContent extends StatelessWidget {
  final String image;
  final String? title;
  final String? subTitle;

  const OutBoardingContent({
    super.key,
    this.image = ManagerAssets.splash1,
    this.title,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ManagerHeight.h500,
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              image,
              height: ManagerHeight.h400,
              width: ManagerWidth.w400,
            ),
          ),
           SizedBox(
            height: ManagerHeight.h60,
          ),
          Text(
            title ?? ManagerStrings.appName,
            style: TextStyle(
              fontSize: ManagerFontSizes.s32,
              fontWeight: ManagerFontWeight.bold,
              color: ManagerColors.outBoardingTitleColor,
            ),
          ),
           SizedBox(
            height: ManagerHeight.h24,
          ),
          SizedBox(
            height: ManagerHeight.h100,
            child: Text(
              subTitle ?? ManagerStrings.appName,
              style: TextStyle(
                fontSize: ManagerFontSizes.s18,
                color: ManagerColors.gray,
              ),
              textAlign: TextAlign.center,
            ),
          ),
           SizedBox(
            height: ManagerHeight.h40,
          ),
        ],
      ),
    );
  }
}
