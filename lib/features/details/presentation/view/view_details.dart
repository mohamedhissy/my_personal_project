import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_personal_project/core/resources/manager_colors.dart';
import 'package:my_personal_project/core/resources/manager_font_sizes.dart';
import 'package:my_personal_project/core/resources/manager_font_weight.dart';
import 'package:my_personal_project/core/resources/manager_height.dart';
import 'package:my_personal_project/core/resources/manager_strings.dart';
import 'package:my_personal_project/core/resources/manager_width.dart';
import 'package:my_personal_project/features/home/presentation/controller/home_controller.dart';

import '../../../home/presentation/model/home_model.dart';


class ViewDetails extends StatelessWidget {
  const ViewDetails({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ManagerColors.homeScaffoldBackGround,
      appBar: AppBar(
        centerTitle: true,
        title: Text( ManagerStrings.history, style: TextStyle(
          fontSize: ManagerFontSizes.s24,
          fontWeight: ManagerFontWeight.bold,
        ),),
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          double price = controller.homeModel.data.first.basePrice;
          int id = controller.homeModel.data.first.id;
          // HomeDataModel homeDataModel = controller.homeModel.data[index];
          return Column(
            children: [
              Container(
                color: Colors.white,
                width: double.infinity,
                height: 70,
                child: Container(
                  margin: EdgeInsetsDirectional.symmetric(
                    horizontal: ManagerWidth.w70,
                    vertical: ManagerHeight.h20,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text('Details',style: TextStyle(
                          fontSize: ManagerFontSizes.s22,
                          fontWeight: ManagerFontWeight.regular,
                        ),),
                      ),
                      Spacer(),
                      Container(
                        child: Text('Review',style: TextStyle(
                          fontSize: ManagerFontSizes.s22,
                          fontWeight: ManagerFontWeight.regular,
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.center,
                // color: ManagerColors.primaryColor,
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(controller.homeModel.data.first.thumbnailImage),
                    alignment: Alignment.topLeft,
                    fit: BoxFit.cover,
                  ),
                ),

              ),
              SizedBox(height: 20,),
              Container(
                alignment: AlignmentDirectional.centerStart,
                margin: EdgeInsetsDirectional.only(
                  start: 12,
                ),
                child: Text(ManagerStrings.productId,style: TextStyle(
                  fontSize: ManagerFontSizes.s24,
                  fontWeight: ManagerFontWeight.regular,
                  color: ManagerColors.primaryColor,
                ),),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: ManagerColors.primaryColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                alignment: AlignmentDirectional.center,
                width: 300,
                height: 50,
                // color: ManagerColors.primaryColor,
                child: Container(
                  margin: EdgeInsetsDirectional.only(start: 16),
                  child: Text('${id}',style: TextStyle(
                      fontSize: ManagerFontSizes.s24,
                      fontWeight: ManagerFontWeight.regular,
                      color: ManagerColors.white
                  ),),
                ),
              ),
              SizedBox(height: 16,),
              Container(
                alignment: AlignmentDirectional.centerStart,
                margin: EdgeInsetsDirectional.only(
                  start: 12,
                ),
                child: Text(ManagerStrings.productName,style: TextStyle(
                  fontSize: ManagerFontSizes.s24,
                  fontWeight: ManagerFontWeight.regular,
                  color: ManagerColors.primaryColor,
                ),),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: ManagerColors.primaryColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                alignment: AlignmentDirectional.center,
                width: 300,
                height: 50,
                // color: ManagerColors.primaryColor,
                child: Container(
                  margin: EdgeInsetsDirectional.only(start: 16),
                  child: Text(controller.homeModel.data.first.name,style: TextStyle(
                    fontSize: ManagerFontSizes.s24,
                    fontWeight: ManagerFontWeight.regular,
                    color: ManagerColors.white
                  ),),
                ),
              ),
              SizedBox(height: 16,),
              Container(
                alignment: AlignmentDirectional.centerStart,
                margin: EdgeInsetsDirectional.only(
                  start: 12,
                ),
                child: Text(ManagerStrings.productPrice,style: TextStyle(
                    fontSize: ManagerFontSizes.s24,
                    fontWeight: ManagerFontWeight.regular,
                  color: ManagerColors.primaryColor,
                ),),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: ManagerColors.primaryColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                alignment: AlignmentDirectional.center,
                width: 300,
                height: 50,
                // color: ManagerColors.primaryColor,
                child: Container(
                  // margin: EdgeInsetsDirectional.only(start: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${price}',style: TextStyle(
                        fontSize: ManagerFontSizes.s24,
                        fontWeight: ManagerFontWeight.regular,
                        color: ManagerColors.white,
                      ),),
                      SizedBox(width: 12,),
                      Text(controller.homeModel.data.first.unit,style: TextStyle(
                        fontSize: ManagerFontSizes.s24,
                        fontWeight: ManagerFontWeight.regular,
                        color: ManagerColors.white,
                      ),),
                    ],
                  ),
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}
