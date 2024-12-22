import 'package:brainrotapp/core/cache/hive/hive_manager.dart';
import 'package:brainrotapp/product_cache.dart';
import 'package:get_it/get_it.dart';

final class DependencyInjection {
  const DependencyInjection._();

  static final _getIt = GetIt.I;

  static void setup() {
    _getIt.registerSingleton(
      ProductCache(
        cacheManager: HiveManager(
          path: 'brainrotapp',
        ),
      ),
    );
  }

  static T read<T extends Object>() => _getIt<T>();
}
