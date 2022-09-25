import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'l10n_state.dart';

class L10nCubit extends Cubit<L10nState> {
  L10nCubit() : super(L10nInitial());

  changeLocale(Locale locale) {
    emit(L10nLoaded(locale));
  }
}
