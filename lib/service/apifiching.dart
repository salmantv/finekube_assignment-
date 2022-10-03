import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:finekubetask/model/userModel.dart';
import 'package:get/get.dart';

class Apihelperclass {
  Future<List<Userdata>> getingrecipedata() async {
    try {
      final dio = Dio();
      const apiUrl = "https://finekube.com/interview/flutterTest.php?pageNo=1";
      var response = await dio.get(apiUrl);
      if (response.statusCode == 200) {
        Iterable list = await response.data["data"];
        log(list.first.toString());
        return list.map((element) => Userdata.fromJson(element)).toList();
      }
    } catch (e) {
      log(e.toString());
    }
    return <Userdata>[];
  }
}
