import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:frazex_intern_task/data/locator.dart';
import 'package:frazex_intern_task/data/model/search_model.dart';
import 'package:frazex_intern_task/data/repositry/search.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());
  SearchRepository repository = getIt.get();

  search(String searchQuery) async {
    emit(SearchLoading());
    try {
      SearchModel response = await repository.search(searchQuery);
      emit(SearchLoaded(response));
    } catch (e) {
      emit(SearchError(e.toString()));
    }
  }

  clear() {
    emit(SearchInitial());
  }
}
