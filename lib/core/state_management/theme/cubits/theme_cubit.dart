import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harmony_hub/core/state_management/theme/states/theme_state.dart';
import 'package:harmony_hub/core/themes/dark_theme.dart';
import 'package:harmony_hub/core/themes/light_theme.dart';

class ThemeCubit extends Cubit<ThemeState>{
  ThemeCubit() : super(LightTheme());

  void toggleTheme() {
    if (state is LightTheme) {
      emit(DarkTheme());
    } else {
      emit (LightTheme());
    }
  }

  ThemeData get themeData {
    return state is DarkTheme ? lightTheme : darkTheme;
  }
}