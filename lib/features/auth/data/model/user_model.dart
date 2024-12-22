import 'package:dart_mappable/dart_mappable.dart';

part 'user_model.mapper.dart';

@MappableClass()
final class UserModel with UserModelMappable {
  UserModel({
    required this.id,
    required this.email,
    required this.name,
  });

  final String id;
  final String email;
  final String name;
}
