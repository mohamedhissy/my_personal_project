import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:my_personal_project/core/constants.dart';
import 'package:my_personal_project/core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import 'package:my_personal_project/features/auth/data/mapper/login_mapper.dart';
import 'package:my_personal_project/features/auth/data/response/login_response.dart';
import 'package:my_personal_project/features/auth/presentation/model/login_model.dart';

class AuthApiController{
  AppSettingsSharedPreferences appSettingsSharedPreferences = AppSettingsSharedPreferences();

  Future<bool> login({
    required String email,
    required String password,
  }) async{
    print('object2');
    Uri url = Uri.parse(ApiRequest.login);
    Response response = await http.post(url, body: {
      ApiConstants.email : email,
      ApiConstants.password : password,
    });
    var json = jsonDecode(response.body);
    print(json);
    if(response.statusCode >= 200 && response.statusCode < 300){
      LoginResponse loginResponse = LoginResponse.fromJson(json);
      LoginModel loginModel = loginResponse.toDomain();
      appSettingsSharedPreferences.setToken(loginModel.accessToken);
      appSettingsSharedPreferences.saveUserInfo(loginModel.user);
      appSettingsSharedPreferences.setLoggedIn();
      return true;
    }
    return false;
  }

  Future<bool> register({
    required String email,
    required String password,
    required String confirmPassword,
    required String name,
    required String phone,
  }) async{
    Uri url = Uri.parse(ApiRequest.register);
    Response response = await http.post(url, body: {
      ApiConstants.email : email,
      ApiConstants.password : password,
      ApiConstants.confirmPassword : confirmPassword,
      ApiConstants.authName : name,
      ApiConstants.phone : phone,
    });
    var json = jsonDecode(response.body);
    if(response.statusCode >= 200 && response.statusCode < 300){
      return true;
    }
    return false;
  }
}