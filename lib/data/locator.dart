import 'package:frazex_intern_task/data/repositry/search.dart';
import 'package:frazex_intern_task/data/service/api.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

class Locator {
  static register() {
    getIt.registerSingleton(ApiService());
    getIt.registerFactory<SearchRepository>(() => SearchImpl(getIt.get()));
  }
}
