import 'package:frazex_intern_task/data/model/search_model.dart';
import 'package:frazex_intern_task/data/service/api.dart';

abstract class SearchRepository {
  Future<SearchModel> search(String searchQuery);
}

class SearchImpl implements SearchRepository {
  final ApiService service;
  SearchImpl(this.service);
  @override
  Future<SearchModel> search(searchQuery) async {
    return await service.search(searchQuery);
  }
}
