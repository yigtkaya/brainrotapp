import 'package:brainrotapp/core/theme/app_theme.dart';
import 'package:brainrotapp/core/theme/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class Theme extends _$Theme {
  @override
  ThemeState build() {
    // build if the phone is dark mode
    final isDarkMode = WidgetsBinding.instance.platformDispatcher.platformBrightness == Brightness.dark;
    return isDarkMode ? ThemeState.dark : ThemeState.light;
  }

  Future<void> toggleTheme() async {
    state = state.currentTheme == AppTheme.darkTheme ? ThemeState.light : ThemeState.dark;
    // Here you can add persistence logic if needed
  }

  ThemeData get currentTheme => state.currentTheme;
}
