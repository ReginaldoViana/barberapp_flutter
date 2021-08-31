import 'package:cashedu/app/global/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginProvider extends GetConnect {

  Future<Map<String, dynamic>?> login(String username, String password) async {
    var response = await post(
        baseUrl + "/client/login", {"username": username, "password": password});

    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    }else{
      print("Erro na requisicao da API: " + response.statusCode.toString());
    }
  }
}