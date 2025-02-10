import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harmony_hub/core/state_management/theme/states/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState>{
  ThemeState? _currentTheme;
  ThemeCubit() : super(LightTheme());

  ThemeState? get currentTheme => _currentTheme;
}