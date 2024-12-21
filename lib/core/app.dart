part of '../main.dart';

final class _App extends ConsumerWidget {
  _App();

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageProvider);
    final theme = ref.watch(themeProvider);
    return locale.when(
      data: (currentLocale) => TranslationProvider(
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          locale: currentLocale,
          supportedLocales: AppLocaleConstants.supportedLocales,
          localizationsDelegates: AppLocaleConstants.localizationsDelegates,
          routerConfig: _appRouter.config(),
          theme: theme.currentTheme,
        ),
      ),
      loading: () => const _LoadingApp(),
      error: (error, stackTrace) => _ErrorApp(error: error),
    );
  }
}

final class _LoadingApp extends StatelessWidget {
  const _LoadingApp();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

final class _ErrorApp extends StatelessWidget {
  const _ErrorApp({required this.error});

  final Object error;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Error initializing app: $error'),
        ),
      ),
    );
  }
}
