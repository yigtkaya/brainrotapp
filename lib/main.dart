import 'dart:async';
import 'dart:developer';

import 'package:brainrotapp/core/constants/app_colors.dart';
import 'package:brainrotapp/core/constants/app_constants.dart';
import 'package:brainrotapp/core/di/deoendecy_injection_items.dart';
import 'package:brainrotapp/core/di/dependecy_injection.dart';
import 'package:brainrotapp/core/environment/app_environment.dart';
import 'package:brainrotapp/core/environment/envied.dart';
import 'package:brainrotapp/core/localization/app_locale.dart';
import 'package:brainrotapp/core/localization/translations/strings.g.dart';
import 'package:brainrotapp/core/providers/locale_provider.dart';
import 'package:brainrotapp/core/router/app_router.dart';
import 'package:brainrotapp/core/theme/theme_provider.dart';
import 'package:brainrotapp/firebase_options.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'core/app.dart';
part 'setup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocaleSettings.useDeviceLocale();

  await setup(
    () => ProviderScope(
      child: _App(),
    ),
  );
}
