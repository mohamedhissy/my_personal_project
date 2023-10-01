import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:my_personal_project/core/constants.dart';
import 'package:my_personal_project/core/widgets/helpers.dart';
import 'package:http/http.dart' as http;
import 'package:my_personal_project/features/home/data/mapper/home_mapper.dart';
import 'package:my_personal_project/features/home/data/response/home_response.dart';
import 'package:my_personal_project/features/home/presentation/model/home_model.dart';

class HomeApiController with Helpers {
  Future get({
    required String endPoint,
    required Map<String, String> header,
}) async {
    return await http.get(
      Uri.parse(endPoint),
      headers : header,
    );
  }

  Future<HomeModel> home({required BuildContext context}) async{
    http.Response response = await get(
      endPoint: ApiRequest.home,
      header: {},
    );

    if(response.statusCode >= 200 && response.statusCode < 300){
      var json = jsonDecode(response.body);
      return HomeResponse.fromJson(json).toDomain();
    }
    else if(response.statusCode >= 400 && response.statusCode < 500){
      var json = jsonDecode(response.body);
      return HomeModel(
        data: [],
        success: json['success'],
        status: json['status'],
      );
    }
    else if(response.statusCode >= 500 && response.statusCode < 600){
      return HomeModel(
          data: [],
          success: false,
          status: 500,
      );
    }
    
    showSnackBar(
        context: context,
        message: 'Something Went Error',
    error: true,
    );
    return HomeModel(
      data: [],
      success: false,
      status: 404,
    );
  }
}