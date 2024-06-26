// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String? get resetPasswordToken => throw _privateConstructorUsedError;
  String? get resetPasswordExpiration => throw _privateConstructorUsedError;
  String? get hash => throw _privateConstructorUsedError;
  String? get salt => throw _privateConstructorUsedError;
  String? get loginAttempts => throw _privateConstructorUsedError;
  String? get lockUntil => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      String updatedAt,
      String createdAt,
      String? resetPasswordToken,
      String? resetPasswordExpiration,
      String? hash,
      String? salt,
      String? loginAttempts,
      String? lockUntil,
      String password});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? updatedAt = null,
    Object? createdAt = null,
    Object? resetPasswordToken = freezed,
    Object? resetPasswordExpiration = freezed,
    Object? hash = freezed,
    Object? salt = freezed,
    Object? loginAttempts = freezed,
    Object? lockUntil = freezed,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      resetPasswordToken: freezed == resetPasswordToken
          ? _value.resetPasswordToken
          : resetPasswordToken // ignore: cast_nullable_to_non_nullable
              as String?,
      resetPasswordExpiration: freezed == resetPasswordExpiration
          ? _value.resetPasswordExpiration
          : resetPasswordExpiration // ignore: cast_nullable_to_non_nullable
              as String?,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      salt: freezed == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String?,
      loginAttempts: freezed == loginAttempts
          ? _value.loginAttempts
          : loginAttempts // ignore: cast_nullable_to_non_nullable
              as String?,
      lockUntil: freezed == lockUntil
          ? _value.lockUntil
          : lockUntil // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      String updatedAt,
      String createdAt,
      String? resetPasswordToken,
      String? resetPasswordExpiration,
      String? hash,
      String? salt,
      String? loginAttempts,
      String? lockUntil,
      String password});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? updatedAt = null,
    Object? createdAt = null,
    Object? resetPasswordToken = freezed,
    Object? resetPasswordExpiration = freezed,
    Object? hash = freezed,
    Object? salt = freezed,
    Object? loginAttempts = freezed,
    Object? lockUntil = freezed,
    Object? password = null,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      resetPasswordToken: freezed == resetPasswordToken
          ? _value.resetPasswordToken
          : resetPasswordToken // ignore: cast_nullable_to_non_nullable
              as String?,
      resetPasswordExpiration: freezed == resetPasswordExpiration
          ? _value.resetPasswordExpiration
          : resetPasswordExpiration // ignore: cast_nullable_to_non_nullable
              as String?,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      salt: freezed == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String?,
      loginAttempts: freezed == loginAttempts
          ? _value.loginAttempts
          : loginAttempts // ignore: cast_nullable_to_non_nullable
              as String?,
      lockUntil: freezed == lockUntil
          ? _value.lockUntil
          : lockUntil // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.id,
      required this.name,
      required this.email,
      required this.updatedAt,
      required this.createdAt,
      this.resetPasswordToken,
      this.resetPasswordExpiration,
      this.hash,
      this.salt,
      this.loginAttempts,
      this.lockUntil,
      required this.password});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String updatedAt;
  @override
  final String createdAt;
  @override
  final String? resetPasswordToken;
  @override
  final String? resetPasswordExpiration;
  @override
  final String? hash;
  @override
  final String? salt;
  @override
  final String? loginAttempts;
  @override
  final String? lockUntil;
  @override
  final String password;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, updatedAt: $updatedAt, createdAt: $createdAt, resetPasswordToken: $resetPasswordToken, resetPasswordExpiration: $resetPasswordExpiration, hash: $hash, salt: $salt, loginAttempts: $loginAttempts, lockUntil: $lockUntil, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.resetPasswordToken, resetPasswordToken) ||
                other.resetPasswordToken == resetPasswordToken) &&
            (identical(
                    other.resetPasswordExpiration, resetPasswordExpiration) ||
                other.resetPasswordExpiration == resetPasswordExpiration) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.salt, salt) || other.salt == salt) &&
            (identical(other.loginAttempts, loginAttempts) ||
                other.loginAttempts == loginAttempts) &&
            (identical(other.lockUntil, lockUntil) ||
                other.lockUntil == lockUntil) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      updatedAt,
      createdAt,
      resetPasswordToken,
      resetPasswordExpiration,
      hash,
      salt,
      loginAttempts,
      lockUntil,
      password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final String id,
      required final String name,
      required final String email,
      required final String updatedAt,
      required final String createdAt,
      final String? resetPasswordToken,
      final String? resetPasswordExpiration,
      final String? hash,
      final String? salt,
      final String? loginAttempts,
      final String? lockUntil,
      required final String password}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get updatedAt;
  @override
  String get createdAt;
  @override
  String? get resetPasswordToken;
  @override
  String? get resetPasswordExpiration;
  @override
  String? get hash;
  @override
  String? get salt;
  @override
  String? get loginAttempts;
  @override
  String? get lockUntil;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
