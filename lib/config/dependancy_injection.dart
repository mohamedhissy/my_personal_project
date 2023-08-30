import 'package:get/get.dart';
import '../features/auth/presentation/controller/auth_controller.dart';


initAuth() {
  Get.put<AuthController>(AuthController());
}

disposeAuth() {
  Get.delete<AuthController>();
}


