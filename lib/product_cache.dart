import 'package:brainrotapp/core/cache/core/cache_manager.dart';
import 'package:brainrotapp/core/cache/hive/hive_operation.dart';
import 'package:brainrotapp/features/auth/domain/entity/user_cache_model.dart';

/// ProductCache is a class that manages the cache for the app.
final class ProductCache {
  ProductCache({
    required CacheManager cacheManager,
  }) : _cacheManager = cacheManager;

  final CacheManager _cacheManager;

  Future<void> init() async {
    _cacheManager.init(
      cacheModels: [
        UserCacheModel.empty(),
      ],
    );
  }

  late final userCacheOperation = HiveCacheOperation<UserCacheModel>();
}
