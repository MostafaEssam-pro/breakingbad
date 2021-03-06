// ignore_for_file: avoid_print, unused_local_variable
import 'dart:convert';

import 'package:breakingbad/data/web_services/dio/dio_helper.dart';
import 'package:dio/dio.dart';

class CharacterService {
  // ignore: non_constant_identifier_names
  Future<List<dynamic>> GetCharacterList() async {
    try {
      Response response = await DioHelper.getData(
        url: 'characters',
      );

      var jsonData = jsonDecode(response.data);
      //print(response.data);
      return jsonData;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
