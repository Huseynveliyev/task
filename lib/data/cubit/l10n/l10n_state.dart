part of 'l10n_cubit.dart';

abstract class L10nState extends Equatable {
  const L10nState();

  @override
  List<Object> get props => [];
}

class L10nInitial extends L10nState {}

class L10nLoaded extends L10nState {
  final Locale locale;

  const L10nLoaded(this.locale);
  @override
  List<Object> get props => [locale];
}
