import 'package:brainrotapp/core/cache/core/cache_model.dart';
import 'package:brainrotapp/features/auth/data/model/user_model.dart';

final class UserCacheModel with CacheModel {
  UserCacheModel({
    required this.user,
  });

  UserCacheModel.empty() : user = UserModel(id: '', email: '', name: '');

  final UserModel user;

  @override
  CacheModel fromDynamicJson(dynamic json) {
    final jsonMap = json as Map<String, dynamic>;

    if (jsonMap.isEmpty) {
      return this;
    }

    return copyWith(
      user: UserModelMapper.fromMap(
        jsonMap,
      ),
    );
  }

  UserCacheModel copyWith({
    UserModel? user,
  }) {
    return UserCacheModel(
      user: user ?? this.user,
    );
  }

  @override
  String get id => user.id;
}
