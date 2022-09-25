import 'package:dio/dio.dart';
import 'package:frazex_intern_task/const/config.dart';
import 'package:frazex_intern_task/data/model/search_model.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class ApiService {
  Dio myDio = Dio();
  ApiService();

  Future<SearchModel> search(String searchQuery) async {
    bool network = await InternetConnectionChecker().hasConnection;
    if (!network) {
      throw Exception("Network Error");
    }
    try {
      myDio.options
        ..contentType = "application/json"
        ..queryParameters = {"q": searchQuery};
      final response = await myDio.get("${ApiConfig.baseUrl}users");
      if (response.statusCode == 200) {
        return SearchModel.fromJson(response.data);
      } else {
        throw Exception("${response.statusCode} -> ${response.statusMessage}");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
