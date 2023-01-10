import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit() : super( const InitialState(Locale("en")));

  void toArabic() => emit( const SelectedLocale(Locale("ar")));

  void toEnglish() => emit(const SelectedLocale(Locale("en")));

}
