import 'package:brainrotapp/core/cache/core/cache_model.dart';

/// A manager for the cache
abstract interface class CacheManager {
  CacheManager({required this.path});

  /// Initialize the cache manager
  void init({required List<CacheModel> cacheModels});

  /// Clear the cache
  void clear();

  /// The path to the cache
  final String? path;
}
