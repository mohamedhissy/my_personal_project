import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_personal_project/core/resources/manager_colors.dart';
import 'package:my_personal_project/features/home/presentation/controller/home_controller.dart';
import '../../route/routes.dart';

class SliderDrawer extends StatelessWidget {
  const SliderDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        backgroundColor: ManagerColors.primaryColor,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: AlignmentDirectional.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: ManagerColors.white,
                    borderRadius: BorderRadius.circular(590)
                ),
                  child: IconButton(
                    iconSize: 50,
                    color: ManagerColors.primaryColor,
                      onPressed: () {
                      Navigator.pushReplacementNamed(context, Routes.homeView);
                      },
                      icon: Icon(
                        Icons.home,
                      ),
                  ),
              ),
              SizedBox(height: 60,),
              Container(
                alignment: AlignmentDirectional.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    color: ManagerColors.white,
                    borderRadius: BorderRadius.circular(590)
                ),
                child: IconButton(
                  iconSize: 50,
                  color: ManagerColors.primaryColor,
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.thisProfile);
                  },
                  icon: Icon(
                    Icons.person,
                  ),
                ),
              ),
              SizedBox(height: 60,),
              Container(
                alignment: AlignmentDirectional.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    color: ManagerColors.white,
                    borderRadius: BorderRadius.circular(590)
                ),
                child: IconButton(
                  iconSize: 50,
                  color: ManagerColors.primaryColor,
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                  ),
                ),
              ),
              SizedBox(height: 60,),
              Container(
                alignment: AlignmentDirectional.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    color: ManagerColors.white,
                    borderRadius: BorderRadius.circular(590)
                ),
                child: IconButton(
                  iconSize: 50,
                  color: ManagerColors.primaryColor,
                  onPressed: () {},
                  icon: Icon(
                    Icons.message,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
