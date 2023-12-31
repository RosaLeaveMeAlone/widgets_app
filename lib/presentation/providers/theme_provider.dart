

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkmodeProvider = StateProvider<bool>((ref) => false);

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

final selectedIndexProvider = StateProvider<int>((ref) => 0);

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier,AppTheme>(
  (ref) => ThemeNotifier()
);

//Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  
  ThemeNotifier() : super(AppTheme());


  void changeTheme() {
    state = AppTheme(
      selectedColor: state.selectedColor,
      isDarkmode: !state.isDarkmode
    );
  }

  void changeColor(int index) {
    state = AppTheme(
      selectedColor: index,
      isDarkmode: state.isDarkmode
    );
  }
}