part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}
class SearchLoading extends SearchState {}
class SearchError extends SearchState {
  final String message;

  const SearchError(this.message);
  
}
class SearchLoaded extends SearchState {
  final SearchModel searchModel;

  const SearchLoaded(this.searchModel);
  
}
