import 'package:brainrotapp/core/di/dependecy_injection.dart';
import 'package:brainrotapp/product_cache.dart';

final class DependencyInjectionItems {
  const DependencyInjectionItems._();

  static ProductCache get productCache => DependencyInjection.read<ProductCache>();
}
