import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_personal_project/core/resources/manager_assets.dart';
import 'package:my_personal_project/core/resources/manager_colors.dart';
import 'package:my_personal_project/core/resources/manager_font_sizes.dart';
import 'package:my_personal_project/core/resources/manager_height.dart';
import 'package:my_personal_project/core/resources/manager_raduis.dart';
import 'package:my_personal_project/core/resources/manager_strings.dart';
import 'package:my_personal_project/core/resources/manager_width.dart';
import 'package:my_personal_project/features/home/presentation/controller/home_controller.dart';
import 'package:my_personal_project/features/home/presentation/model/home_model.dart';
import 'package:slide_drawer/slide_drawer.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/widgets/slider_drawer.dart';
import '../../../../route/routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SlideDrawer(
      drawer: SliderDrawer(),
      child: GetBuilder<HomeController>(builder: (controller) {
        double a = controller.homeModel.data.first.basePrice;

        return Scaffold(
          backgroundColor: ManagerColors.homeScaffoldBackGround,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: ManagerColors.transparent,
            leading: Builder(builder: (context) {
              return IconButton(
                  onPressed: () {
                    SlideDrawer.of(context)?.toggle();
                  },
                  icon: Icon(Icons.menu));
            }),
            title: Text(
              ManagerStrings.appName,
              style: TextStyle(
                fontWeight: ManagerFontWeight.regular,
              ),
            ),
            actions: [
              Icon(Icons.add_alert_rounded),
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsetsDirectional.only(start: ManagerWidth.w20),
              child: Column(
                children: [
                  SizedBox(
                    height: ManagerHeight.h12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: ManagerColors.white,
                        borderRadius:
                            BorderRadius.circular(ManagerRadius.r100)),
                    margin: EdgeInsetsDirectional.only(end: ManagerWidth.w20),
                    child: Row(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                        SizedBox(
                          width: ManagerWidth.w16,
                        ),
                        Expanded(
                          child: Text(
                            ManagerStrings.search,
                            style: TextStyle(
                              color: ManagerColors.gray,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.filter_list_rounded,
                              color: ManagerColors.primaryColor,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ManagerHeight.h12,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ManagerStrings.needAHelpingHandToday,
                        style: TextStyle(
                          fontSize: ManagerFontSizes.s18,
                          fontWeight: ManagerFontWeight.regular,
                        ),
                      ),
                      Text(
                        ManagerStrings.findYourHomeService,
                        style: TextStyle(
                          fontSize: ManagerFontSizes.s18,
                          fontWeight: ManagerFontWeight.regular,
                        ),
                      ),
                      Container(
                          margin: EdgeInsetsDirectional.only(end: 20),
                          child: Image.asset(
                            ManagerAssets.home1,
                            width: ManagerWidth.w380,
                            height: ManagerHeight.h140,
                          )),
                      SizedBox(
                        height: ManagerHeight.h12,
                      ),
                      Row(
                        children: [
                          Text(
                            ManagerStrings.ourServices,
                            style: TextStyle(
                              fontSize: ManagerFontSizes.s16,
                              fontWeight: ManagerFontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsetsDirectional.only(end: 20),
                            child: Text(
                              ManagerStrings.seeAll,
                              style: TextStyle(
                                fontSize: ManagerFontSizes.s14,
                                color: ManagerColors.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.viewDetails);
                        },
                        child: Container(
                          width: 355,
                          height: 360,
                          // color: Colors.red,
                          child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                              ),
                              itemCount: controller.homeModel.data.length,
                              itemBuilder: (context, index) {
                                HomeDataModel homeDataModel =
                                    controller.homeModel.data[index];
                                return Container(
                                  width: ManagerWidth.w90,
                                  height: ManagerHeight.h180,
                                  decoration: BoxDecoration(
                                    color: ManagerColors.transparent,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        homeDataModel.thumbnailImage,
                                      ),
                                      alignment: Alignment.topLeft,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Container(
                                    color: ManagerColors.white,
                                    margin:
                                        EdgeInsetsDirectional.only(top: 150),
                                    child: Row(
                                      children: [
                                        Text(
                                          homeDataModel.name,
                                          style: TextStyle(
                                              fontSize: 10,
                                              color:
                                                  ManagerColors.primaryColor,
                                              fontWeight:
                                                  ManagerFontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: ManagerWidth.w40,
                                        ),
                                        Text(
                                          '${a}',
                                          style: TextStyle(
                                              color:
                                                  ManagerColors.primaryColor,
                                              fontWeight:
                                                  ManagerFontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: ManagerWidth.w8,
                                        ),
                                        Text(
                                          controller
                                              .homeModel.data.first.unit,
                                          style: const TextStyle(
                                              color:
                                                  ManagerColors.primaryColor,
                                              fontWeight:
                                                  ManagerFontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                  // Container(
                  //   width: double.infinity,
                  //   height: 50,
                  //   color: Colors.red,
                  // ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
