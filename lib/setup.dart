part of '../main.dart';

Future<void> setup(FutureOr<Widget> Function() builder) async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await firebaseConfig();

    await dotenv.load();

    runApp(
      await builder(),
    );
  }, (error, stack) {
    log(
      error.toString(),
      stackTrace: stack,
      name: AppConstants.initFunctionName,
    );
    FirebaseCrashlytics.instance.recordError(
      error,
      stack,
    );
  });
}

/// Configure the firebase services
Future<void> firebaseConfig() async {
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
//   await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
//   await FirebaseAnalytics.instance.logAppOpen();
}
