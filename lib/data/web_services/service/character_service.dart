// ignore_for_file: avoid_print, unused_local_variable
import 'package:breakingbad/data/web_services/dio/dio_helper.dart';
import 'package:dio/dio.dart';

class CharacterService {
  // ignore: non_constant_identifier_names
  Future<List<dynamic>> GetCharacterList()async {
    try {
    Future<Response> response=DioHelper.getData(
        url: 'categories',
    );
      return response.then((value) => value.data);
    
         
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
