import 'package:flutter/material.dart';

/// Extension on [BuildContext] to get the [MediaQueryData], [ThemeData]
/// , [TextTheme], and some padding values.
extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get screenHeight => mediaQuery.size.height;
  double get screenWidth => mediaQuery.size.width;

  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
}
