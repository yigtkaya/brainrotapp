import 'package:brainrotapp/core/cache/core/cache_model.dart';
import 'package:brainrotapp/core/cache/core/cache_operation.dart';
import 'package:sqflite/sqflite.dart';

final class SqfliteCacheOperation<T extends CacheModel> implements CacheOperation<T> {
  SqfliteCacheOperation({required this.db});

  /// The database
  final Database db;

  @override
  void add(T item) {
    // TODO: Implement add
  }

  @override
  void addAll(List<T> items) {
    // TODO: implement addAll
  }

  @override
  void clear() {
    // TODO: implement clear
  }

  @override
  CacheModel fromDynamicJson(dynamic json) {
    // TODO: implement fromDynamicJson
    throw UnimplementedError();
  }

  @override
  T get(String id) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  List<T> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  // TODO: implement id
  String get id => throw UnimplementedError();

  @override
  void remove(String id) {
    // TODO: implement remove
  }

  @override
  void removeAll(List<String> ids) {
    // TODO: implement removeAll
  }

  @override
  void update(T item) {
    // TODO: implement update
  }

  @override
  void updateAll(List<T> items) {
    // TODO: implement updateAll
  }
}
