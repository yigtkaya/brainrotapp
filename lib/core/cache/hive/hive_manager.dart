import 'package:brainrotapp/core/cache/core/cache_manager.dart';
import 'package:brainrotapp/core/cache/core/cache_model.dart';
import 'package:hive/hive.dart';

final class HiveManager implements CacheManager {
  HiveManager({required this.path});

  /// The path to the cache
  @override
  final String path;
  @override
  void clear() {
    Hive.deleteAllBoxesFromDisk();
  }

  @override
  void init({required List<CacheModel> cacheModels}) {
    Hive.defaultDirectory = path;

    for (final cacheModel in cacheModels) {
      Hive.registerAdapter(
        '${cacheModel.runtimeType}',
        cacheModel.fromDynamicJson,
      );
    }
  }
}
