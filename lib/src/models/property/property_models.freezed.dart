// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Property _$PropertyFromJson(Map<String, dynamic> json) {
  return _Property.fromJson(json);
}

/// @nodoc
mixin _$Property {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  PropertyLocation get location => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<PropertyImage>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyCopyWith<Property> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyCopyWith<$Res> {
  factory $PropertyCopyWith(Property value, $Res Function(Property) then) =
      _$PropertyCopyWithImpl<$Res, Property>;
  @useResult
  $Res call(
      {String name,
      String value,
      String id,
      String? category,
      PropertyLocation location,
      String createdAt,
      String updatedAt,
      String description,
      List<PropertyImage>? images});

  $PropertyLocationCopyWith<$Res> get location;
}

/// @nodoc
class _$PropertyCopyWithImpl<$Res, $Val extends Property>
    implements $PropertyCopyWith<$Res> {
  _$PropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? id = null,
    Object? category = freezed,
    Object? location = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? description = null,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PropertyLocation,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PropertyImage>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyLocationCopyWith<$Res> get location {
    return $PropertyLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertyImplCopyWith<$Res>
    implements $PropertyCopyWith<$Res> {
  factory _$$PropertyImplCopyWith(
          _$PropertyImpl value, $Res Function(_$PropertyImpl) then) =
      __$$PropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String value,
      String id,
      String? category,
      PropertyLocation location,
      String createdAt,
      String updatedAt,
      String description,
      List<PropertyImage>? images});

  @override
  $PropertyLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$PropertyImplCopyWithImpl<$Res>
    extends _$PropertyCopyWithImpl<$Res, _$PropertyImpl>
    implements _$$PropertyImplCopyWith<$Res> {
  __$$PropertyImplCopyWithImpl(
      _$PropertyImpl _value, $Res Function(_$PropertyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? id = null,
    Object? category = freezed,
    Object? location = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? description = null,
    Object? images = freezed,
  }) {
    return _then(_$PropertyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PropertyLocation,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PropertyImage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyImpl implements _Property {
  const _$PropertyImpl(
      {required this.name,
      required this.value,
      required this.id,
      this.category,
      required this.location,
      required this.createdAt,
      required this.updatedAt,
      required this.description,
      final List<PropertyImage>? images})
      : _images = images;

  factory _$PropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyImplFromJson(json);

  @override
  final String name;
  @override
  final String value;
  @override
  final String id;
  @override
  final String? category;
  @override
  final PropertyLocation location;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String description;
  final List<PropertyImage>? _images;
  @override
  List<PropertyImage>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Property(name: $name, value: $value, id: $id, category: $category, location: $location, createdAt: $createdAt, updatedAt: $updatedAt, description: $description, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      value,
      id,
      category,
      location,
      createdAt,
      updatedAt,
      description,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyImplCopyWith<_$PropertyImpl> get copyWith =>
      __$$PropertyImplCopyWithImpl<_$PropertyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyImplToJson(
      this,
    );
  }
}

abstract class _Property implements Property {
  const factory _Property(
      {required final String name,
      required final String value,
      required final String id,
      final String? category,
      required final PropertyLocation location,
      required final String createdAt,
      required final String updatedAt,
      required final String description,
      final List<PropertyImage>? images}) = _$PropertyImpl;

  factory _Property.fromJson(Map<String, dynamic> json) =
      _$PropertyImpl.fromJson;

  @override
  String get name;
  @override
  String get value;
  @override
  String get id;
  @override
  String? get category;
  @override
  PropertyLocation get location;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get description;
  @override
  List<PropertyImage>? get images;
  @override
  @JsonKey(ignore: true)
  _$$PropertyImplCopyWith<_$PropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PropertyLocation _$PropertyLocationFromJson(Map<String, dynamic> json) {
  return _PropertyLocation.fromJson(json);
}

/// @nodoc
mixin _$PropertyLocation {
  String get address => throw _privateConstructorUsedError;
  PropertyLocationType? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyLocationCopyWith<PropertyLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyLocationCopyWith<$Res> {
  factory $PropertyLocationCopyWith(
          PropertyLocation value, $Res Function(PropertyLocation) then) =
      _$PropertyLocationCopyWithImpl<$Res, PropertyLocation>;
  @useResult
  $Res call({String address, PropertyLocationType? type});
}

/// @nodoc
class _$PropertyLocationCopyWithImpl<$Res, $Val extends PropertyLocation>
    implements $PropertyLocationCopyWith<$Res> {
  _$PropertyLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PropertyLocationType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyLocationImplCopyWith<$Res>
    implements $PropertyLocationCopyWith<$Res> {
  factory _$$PropertyLocationImplCopyWith(_$PropertyLocationImpl value,
          $Res Function(_$PropertyLocationImpl) then) =
      __$$PropertyLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, PropertyLocationType? type});
}

/// @nodoc
class __$$PropertyLocationImplCopyWithImpl<$Res>
    extends _$PropertyLocationCopyWithImpl<$Res, _$PropertyLocationImpl>
    implements _$$PropertyLocationImplCopyWith<$Res> {
  __$$PropertyLocationImplCopyWithImpl(_$PropertyLocationImpl _value,
      $Res Function(_$PropertyLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? type = freezed,
  }) {
    return _then(_$PropertyLocationImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PropertyLocationType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyLocationImpl implements _PropertyLocation {
  const _$PropertyLocationImpl({required this.address, this.type});

  factory _$PropertyLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyLocationImplFromJson(json);

  @override
  final String address;
  @override
  final PropertyLocationType? type;

  @override
  String toString() {
    return 'PropertyLocation(address: $address, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyLocationImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyLocationImplCopyWith<_$PropertyLocationImpl> get copyWith =>
      __$$PropertyLocationImplCopyWithImpl<_$PropertyLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyLocationImplToJson(
      this,
    );
  }
}

abstract class _PropertyLocation implements PropertyLocation {
  const factory _PropertyLocation(
      {required final String address,
      final PropertyLocationType? type}) = _$PropertyLocationImpl;

  factory _PropertyLocation.fromJson(Map<String, dynamic> json) =
      _$PropertyLocationImpl.fromJson;

  @override
  String get address;
  @override
  PropertyLocationType? get type;
  @override
  @JsonKey(ignore: true)
  _$$PropertyLocationImplCopyWith<_$PropertyLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PropertyImage _$PropertyImageFromJson(Map<String, dynamic> json) {
  return _PropertyImage.fromJson(json);
}

/// @nodoc
mixin _$PropertyImage {
  String? get url => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get alt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyImageCopyWith<PropertyImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyImageCopyWith<$Res> {
  factory $PropertyImageCopyWith(
          PropertyImage value, $Res Function(PropertyImage) then) =
      _$PropertyImageCopyWithImpl<$Res, PropertyImage>;
  @useResult
  $Res call(
      {String? url, String id, String alt, String updatedAt, String createdAt});
}

/// @nodoc
class _$PropertyImageCopyWithImpl<$Res, $Val extends PropertyImage>
    implements $PropertyImageCopyWith<$Res> {
  _$PropertyImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? id = null,
    Object? alt = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      alt: null == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyImageImplCopyWith<$Res>
    implements $PropertyImageCopyWith<$Res> {
  factory _$$PropertyImageImplCopyWith(
          _$PropertyImageImpl value, $Res Function(_$PropertyImageImpl) then) =
      __$$PropertyImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? url, String id, String alt, String updatedAt, String createdAt});
}

/// @nodoc
class __$$PropertyImageImplCopyWithImpl<$Res>
    extends _$PropertyImageCopyWithImpl<$Res, _$PropertyImageImpl>
    implements _$$PropertyImageImplCopyWith<$Res> {
  __$$PropertyImageImplCopyWithImpl(
      _$PropertyImageImpl _value, $Res Function(_$PropertyImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? id = null,
    Object? alt = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$PropertyImageImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      alt: null == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyImageImpl implements _PropertyImage {
  const _$PropertyImageImpl(
      {this.url,
      required this.id,
      required this.alt,
      required this.updatedAt,
      required this.createdAt});

  factory _$PropertyImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyImageImplFromJson(json);

  @override
  final String? url;
  @override
  final String id;
  @override
  final String alt;
  @override
  final String updatedAt;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'PropertyImage(url: $url, id: $id, alt: $alt, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyImageImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.alt, alt) || other.alt == alt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, url, id, alt, updatedAt, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyImageImplCopyWith<_$PropertyImageImpl> get copyWith =>
      __$$PropertyImageImplCopyWithImpl<_$PropertyImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyImageImplToJson(
      this,
    );
  }
}

abstract class _PropertyImage implements PropertyImage {
  const factory _PropertyImage(
      {final String? url,
      required final String id,
      required final String alt,
      required final String updatedAt,
      required final String createdAt}) = _$PropertyImageImpl;

  factory _PropertyImage.fromJson(Map<String, dynamic> json) =
      _$PropertyImageImpl.fromJson;

  @override
  String? get url;
  @override
  String get id;
  @override
  String get alt;
  @override
  String get updatedAt;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$PropertyImageImplCopyWith<_$PropertyImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PropertyPurchase _$PropertyPurchaseFromJson(Map<String, dynamic> json) {
  return _PropertyPurchase.fromJson(json);
}

/// @nodoc
mixin _$PropertyPurchase {
  double get price => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  Property get propertyPurchased => throw _privateConstructorUsedError;
  PropertyPurchasedBy get propertyPurchasedBy =>
      throw _privateConstructorUsedError;
  String? get purchaseID => throw _privateConstructorUsedError;
  List<PropertyPurchaseDocuments> get documents =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyPurchaseCopyWith<PropertyPurchase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyPurchaseCopyWith<$Res> {
  factory $PropertyPurchaseCopyWith(
          PropertyPurchase value, $Res Function(PropertyPurchase) then) =
      _$PropertyPurchaseCopyWithImpl<$Res, PropertyPurchase>;
  @useResult
  $Res call(
      {double price,
      DateTime date,
      Property propertyPurchased,
      PropertyPurchasedBy propertyPurchasedBy,
      String? purchaseID,
      List<PropertyPurchaseDocuments> documents});

  $PropertyCopyWith<$Res> get propertyPurchased;
  $PropertyPurchasedByCopyWith<$Res> get propertyPurchasedBy;
}

/// @nodoc
class _$PropertyPurchaseCopyWithImpl<$Res, $Val extends PropertyPurchase>
    implements $PropertyPurchaseCopyWith<$Res> {
  _$PropertyPurchaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? date = null,
    Object? propertyPurchased = null,
    Object? propertyPurchasedBy = null,
    Object? purchaseID = freezed,
    Object? documents = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      propertyPurchased: null == propertyPurchased
          ? _value.propertyPurchased
          : propertyPurchased // ignore: cast_nullable_to_non_nullable
              as Property,
      propertyPurchasedBy: null == propertyPurchasedBy
          ? _value.propertyPurchasedBy
          : propertyPurchasedBy // ignore: cast_nullable_to_non_nullable
              as PropertyPurchasedBy,
      purchaseID: freezed == purchaseID
          ? _value.purchaseID
          : purchaseID // ignore: cast_nullable_to_non_nullable
              as String?,
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<PropertyPurchaseDocuments>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyCopyWith<$Res> get propertyPurchased {
    return $PropertyCopyWith<$Res>(_value.propertyPurchased, (value) {
      return _then(_value.copyWith(propertyPurchased: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyPurchasedByCopyWith<$Res> get propertyPurchasedBy {
    return $PropertyPurchasedByCopyWith<$Res>(_value.propertyPurchasedBy,
        (value) {
      return _then(_value.copyWith(propertyPurchasedBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertyPurchaseImplCopyWith<$Res>
    implements $PropertyPurchaseCopyWith<$Res> {
  factory _$$PropertyPurchaseImplCopyWith(_$PropertyPurchaseImpl value,
          $Res Function(_$PropertyPurchaseImpl) then) =
      __$$PropertyPurchaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double price,
      DateTime date,
      Property propertyPurchased,
      PropertyPurchasedBy propertyPurchasedBy,
      String? purchaseID,
      List<PropertyPurchaseDocuments> documents});

  @override
  $PropertyCopyWith<$Res> get propertyPurchased;
  @override
  $PropertyPurchasedByCopyWith<$Res> get propertyPurchasedBy;
}

/// @nodoc
class __$$PropertyPurchaseImplCopyWithImpl<$Res>
    extends _$PropertyPurchaseCopyWithImpl<$Res, _$PropertyPurchaseImpl>
    implements _$$PropertyPurchaseImplCopyWith<$Res> {
  __$$PropertyPurchaseImplCopyWithImpl(_$PropertyPurchaseImpl _value,
      $Res Function(_$PropertyPurchaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? date = null,
    Object? propertyPurchased = null,
    Object? propertyPurchasedBy = null,
    Object? purchaseID = freezed,
    Object? documents = null,
  }) {
    return _then(_$PropertyPurchaseImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      propertyPurchased: null == propertyPurchased
          ? _value.propertyPurchased
          : propertyPurchased // ignore: cast_nullable_to_non_nullable
              as Property,
      propertyPurchasedBy: null == propertyPurchasedBy
          ? _value.propertyPurchasedBy
          : propertyPurchasedBy // ignore: cast_nullable_to_non_nullable
              as PropertyPurchasedBy,
      purchaseID: freezed == purchaseID
          ? _value.purchaseID
          : purchaseID // ignore: cast_nullable_to_non_nullable
              as String?,
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<PropertyPurchaseDocuments>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyPurchaseImpl implements _PropertyPurchase {
  const _$PropertyPurchaseImpl(
      {required this.price,
      required this.date,
      required this.propertyPurchased,
      required this.propertyPurchasedBy,
      this.purchaseID,
      required final List<PropertyPurchaseDocuments> documents})
      : _documents = documents;

  factory _$PropertyPurchaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyPurchaseImplFromJson(json);

  @override
  final double price;
  @override
  final DateTime date;
  @override
  final Property propertyPurchased;
  @override
  final PropertyPurchasedBy propertyPurchasedBy;
  @override
  final String? purchaseID;
  final List<PropertyPurchaseDocuments> _documents;
  @override
  List<PropertyPurchaseDocuments> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  String toString() {
    return 'PropertyPurchase(price: $price, date: $date, propertyPurchased: $propertyPurchased, propertyPurchasedBy: $propertyPurchasedBy, purchaseID: $purchaseID, documents: $documents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyPurchaseImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.propertyPurchased, propertyPurchased) ||
                other.propertyPurchased == propertyPurchased) &&
            (identical(other.propertyPurchasedBy, propertyPurchasedBy) ||
                other.propertyPurchasedBy == propertyPurchasedBy) &&
            (identical(other.purchaseID, purchaseID) ||
                other.purchaseID == purchaseID) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      price,
      date,
      propertyPurchased,
      propertyPurchasedBy,
      purchaseID,
      const DeepCollectionEquality().hash(_documents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyPurchaseImplCopyWith<_$PropertyPurchaseImpl> get copyWith =>
      __$$PropertyPurchaseImplCopyWithImpl<_$PropertyPurchaseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyPurchaseImplToJson(
      this,
    );
  }
}

abstract class _PropertyPurchase implements PropertyPurchase {
  const factory _PropertyPurchase(
          {required final double price,
          required final DateTime date,
          required final Property propertyPurchased,
          required final PropertyPurchasedBy propertyPurchasedBy,
          final String? purchaseID,
          required final List<PropertyPurchaseDocuments> documents}) =
      _$PropertyPurchaseImpl;

  factory _PropertyPurchase.fromJson(Map<String, dynamic> json) =
      _$PropertyPurchaseImpl.fromJson;

  @override
  double get price;
  @override
  DateTime get date;
  @override
  Property get propertyPurchased;
  @override
  PropertyPurchasedBy get propertyPurchasedBy;
  @override
  String? get purchaseID;
  @override
  List<PropertyPurchaseDocuments> get documents;
  @override
  @JsonKey(ignore: true)
  _$$PropertyPurchaseImplCopyWith<_$PropertyPurchaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PropertyPurchasedBy _$PropertyPurchasedByFromJson(Map<String, dynamic> json) {
  return _PropertyPurchasedBy.fromJson(json);
}

/// @nodoc
mixin _$PropertyPurchasedBy {
  String get userID => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyPurchasedByCopyWith<PropertyPurchasedBy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyPurchasedByCopyWith<$Res> {
  factory $PropertyPurchasedByCopyWith(
          PropertyPurchasedBy value, $Res Function(PropertyPurchasedBy) then) =
      _$PropertyPurchasedByCopyWithImpl<$Res, PropertyPurchasedBy>;
  @useResult
  $Res call({String userID, String name});
}

/// @nodoc
class _$PropertyPurchasedByCopyWithImpl<$Res, $Val extends PropertyPurchasedBy>
    implements $PropertyPurchasedByCopyWith<$Res> {
  _$PropertyPurchasedByCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyPurchasedByImplCopyWith<$Res>
    implements $PropertyPurchasedByCopyWith<$Res> {
  factory _$$PropertyPurchasedByImplCopyWith(_$PropertyPurchasedByImpl value,
          $Res Function(_$PropertyPurchasedByImpl) then) =
      __$$PropertyPurchasedByImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userID, String name});
}

/// @nodoc
class __$$PropertyPurchasedByImplCopyWithImpl<$Res>
    extends _$PropertyPurchasedByCopyWithImpl<$Res, _$PropertyPurchasedByImpl>
    implements _$$PropertyPurchasedByImplCopyWith<$Res> {
  __$$PropertyPurchasedByImplCopyWithImpl(_$PropertyPurchasedByImpl _value,
      $Res Function(_$PropertyPurchasedByImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? name = null,
  }) {
    return _then(_$PropertyPurchasedByImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyPurchasedByImpl implements _PropertyPurchasedBy {
  const _$PropertyPurchasedByImpl({required this.userID, required this.name});

  factory _$PropertyPurchasedByImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyPurchasedByImplFromJson(json);

  @override
  final String userID;
  @override
  final String name;

  @override
  String toString() {
    return 'PropertyPurchasedBy(userID: $userID, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyPurchasedByImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userID, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyPurchasedByImplCopyWith<_$PropertyPurchasedByImpl> get copyWith =>
      __$$PropertyPurchasedByImplCopyWithImpl<_$PropertyPurchasedByImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyPurchasedByImplToJson(
      this,
    );
  }
}

abstract class _PropertyPurchasedBy implements PropertyPurchasedBy {
  const factory _PropertyPurchasedBy(
      {required final String userID,
      required final String name}) = _$PropertyPurchasedByImpl;

  factory _PropertyPurchasedBy.fromJson(Map<String, dynamic> json) =
      _$PropertyPurchasedByImpl.fromJson;

  @override
  String get userID;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$PropertyPurchasedByImplCopyWith<_$PropertyPurchasedByImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PropertyPurchaseDocuments _$PropertyPurchaseDocumentsFromJson(
    Map<String, dynamic> json) {
  return _PropertyPurchaseDocuments.fromJson(json);
}

/// @nodoc
mixin _$PropertyPurchaseDocuments {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyPurchaseDocumentsCopyWith<PropertyPurchaseDocuments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyPurchaseDocumentsCopyWith<$Res> {
  factory $PropertyPurchaseDocumentsCopyWith(PropertyPurchaseDocuments value,
          $Res Function(PropertyPurchaseDocuments) then) =
      _$PropertyPurchaseDocumentsCopyWithImpl<$Res, PropertyPurchaseDocuments>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PropertyPurchaseDocumentsCopyWithImpl<$Res,
        $Val extends PropertyPurchaseDocuments>
    implements $PropertyPurchaseDocumentsCopyWith<$Res> {
  _$PropertyPurchaseDocumentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyPurchaseDocumentsImplCopyWith<$Res>
    implements $PropertyPurchaseDocumentsCopyWith<$Res> {
  factory _$$PropertyPurchaseDocumentsImplCopyWith(
          _$PropertyPurchaseDocumentsImpl value,
          $Res Function(_$PropertyPurchaseDocumentsImpl) then) =
      __$$PropertyPurchaseDocumentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PropertyPurchaseDocumentsImplCopyWithImpl<$Res>
    extends _$PropertyPurchaseDocumentsCopyWithImpl<$Res,
        _$PropertyPurchaseDocumentsImpl>
    implements _$$PropertyPurchaseDocumentsImplCopyWith<$Res> {
  __$$PropertyPurchaseDocumentsImplCopyWithImpl(
      _$PropertyPurchaseDocumentsImpl _value,
      $Res Function(_$PropertyPurchaseDocumentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$PropertyPurchaseDocumentsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyPurchaseDocumentsImpl implements _PropertyPurchaseDocuments {
  const _$PropertyPurchaseDocumentsImpl(
      {required this.name, required this.url});

  factory _$PropertyPurchaseDocumentsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyPurchaseDocumentsImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PropertyPurchaseDocuments(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyPurchaseDocumentsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyPurchaseDocumentsImplCopyWith<_$PropertyPurchaseDocumentsImpl>
      get copyWith => __$$PropertyPurchaseDocumentsImplCopyWithImpl<
          _$PropertyPurchaseDocumentsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyPurchaseDocumentsImplToJson(
      this,
    );
  }
}

abstract class _PropertyPurchaseDocuments implements PropertyPurchaseDocuments {
  const factory _PropertyPurchaseDocuments(
      {required final String name,
      required final String url}) = _$PropertyPurchaseDocumentsImpl;

  factory _PropertyPurchaseDocuments.fromJson(Map<String, dynamic> json) =
      _$PropertyPurchaseDocumentsImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$PropertyPurchaseDocumentsImplCopyWith<_$PropertyPurchaseDocumentsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
