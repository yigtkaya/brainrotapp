import 'package:brainrotapp/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

enum ThemeState {
  light,
  dark;

  ThemeData get currentTheme => this == ThemeState.dark ? AppTheme.darkTheme : AppTheme.lightTheme;
}
