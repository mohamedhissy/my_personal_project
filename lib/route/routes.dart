import 'package:flutter/material.dart';
import 'package:my_personal_project/features/auth/presentation/view/login_view.dart';
import 'package:my_personal_project/features/auth/presentation/view/register_view.dart';
import 'package:my_personal_project/features/out_boarding/presentation/view/on_boarding.dart';
import 'package:my_personal_project/features/out_boarding/presentation/view/out_boarding.dart';
import 'package:my_personal_project/features/splash/presentation/view/splash_screen.dart';

import '../config/dependancy_injection.dart';
import '../core/resources/manager_strings.dart';

class Routes{
  static const String splashScreen = '/splash_screen';
  static const String onBoarding = '/on_boarding';
  static const String outBoardingScreen = '/out_boarding';
  static const String loginView = '/login_view';
  static const String registerView = '/register_view';
}

class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings settings){
    switch (settings.name){
      case Routes.splashScreen :
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case Routes.onBoarding :
        return MaterialPageRoute(builder: (_) => OnBoarding());
      case Routes.outBoardingScreen :
        return MaterialPageRoute(builder: (_) => OutBoardingScreen());
      case Routes.loginView :
        initAuth();
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.registerView :
        initAuth();
        return MaterialPageRoute(builder: (_) => RegisterView());
      default :
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute(){
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(ManagerStrings.notFoundRoute),
        ),
      ),
    );
  }
}
