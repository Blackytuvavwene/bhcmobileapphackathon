import 'package:freezed_annotation/freezed_annotation.dart';

// import generated code
part 'user_model.freezed.dart';

// import serialized code
part 'user_model.g.dart';

// user model
@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    required String email,
    required String updatedAt,
    required String createdAt,
    String? resetPasswordToken,
    String? resetPasswordExpiration,
    String? hash,
    String? salt,
    String? loginAttempts,
    String? lockUntil,
    required String password,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}
