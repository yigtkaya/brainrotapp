import 'package:brainrotapp/core/cache/core/cache_model.dart';

abstract interface class CacheOperation<T extends CacheModel> {
  void add(T item);
  void addAll(List<T> items);
  void remove(String id);
  void removeAll(List<String> ids);
  void update(T item);
  void updateAll(List<T> items);
  T? get(String id);
  List<T> getAll();
  void clear();
}
