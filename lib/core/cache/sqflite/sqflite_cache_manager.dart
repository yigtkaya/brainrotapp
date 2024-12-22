import 'package:brainrotapp/core/cache/core/cache_manager.dart';
import 'package:brainrotapp/core/cache/core/cache_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

/// A cache manager that uses sqflite
final class SqfliteCacheManager implements CacheManager {
  /// Create a new sqflite cache manager
  SqfliteCacheManager({required this.path});

  /// The path to the cache
  @override
  final String path;

  /// Initialize the cache manager
  @override
  Future<void> init({required List<CacheModel> cacheModels}) async {
    final databasesPath = await getDatabasesPath();
    final databasePath = join(databasesPath, path);

    await openDatabase(
      databasePath,
      version: 1,
      onCreate: (db, version) async {
        // Create tables here
      },
    );
  }

  @override
  Future<void> clear() async {
    await deleteDatabase(path);
  }
}
