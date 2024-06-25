// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      updatedAt: json['updatedAt'] as String,
      createdAt: json['createdAt'] as String,
      resetPasswordToken: json['resetPasswordToken'] as String?,
      resetPasswordExpiration: json['resetPasswordExpiration'] as String?,
      hash: json['hash'] as String?,
      salt: json['salt'] as String?,
      loginAttempts: json['loginAttempts'] as String?,
      lockUntil: json['lockUntil'] as String?,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
      'resetPasswordToken': instance.resetPasswordToken,
      'resetPasswordExpiration': instance.resetPasswordExpiration,
      'hash': instance.hash,
      'salt': instance.salt,
      'loginAttempts': instance.loginAttempts,
      'lockUntil': instance.lockUntil,
      'password': instance.password,
    };
