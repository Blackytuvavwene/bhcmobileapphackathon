// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyImpl _$$PropertyImplFromJson(Map<String, dynamic> json) =>
    _$PropertyImpl(
      name: json['name'] as String,
      value: json['value'] as String,
      propertyID: json['propertyID'] as String?,
      category: json['category'] as String?,
      location: json['location'] == null
          ? null
          : PropertyLocation.fromJson(json['location'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => PropertyImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PropertyImplToJson(_$PropertyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'propertyID': instance.propertyID,
      'category': instance.category,
      'location': instance.location,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'images': instance.images,
    };

_$PropertyLocationImpl _$$PropertyLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyLocationImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      address: json['address'] as String?,
      type: $enumDecodeNullable(_$PropertyLocationTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$PropertyLocationImplToJson(
        _$PropertyLocationImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'type': _$PropertyLocationTypeEnumMap[instance.type],
    };

const _$PropertyLocationTypeEnumMap = {
  PropertyLocationType.city: 'city',
  PropertyLocationType.village: 'village',
  PropertyLocationType.town: 'town',
};

_$PropertyImageImpl _$$PropertyImageImplFromJson(Map<String, dynamic> json) =>
    _$PropertyImageImpl(
      imageUrl: json['imageUrl'] as String,
      propertyID: json['propertyID'] as String?,
      imageID: json['imageID'] as String?,
      name: json['name'] as String?,
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
    );

Map<String, dynamic> _$$PropertyImageImplToJson(_$PropertyImageImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'propertyID': instance.propertyID,
      'imageID': instance.imageID,
      'name': instance.name,
      'width': instance.width,
      'height': instance.height,
    };

_$PropertyPurchaseImpl _$$PropertyPurchaseImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyPurchaseImpl(
      price: (json['price'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      propertyPurchased:
          Property.fromJson(json['propertyPurchased'] as Map<String, dynamic>),
      propertyPurchasedBy: PropertyPurchasedBy.fromJson(
          json['propertyPurchasedBy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PropertyPurchaseImplToJson(
        _$PropertyPurchaseImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'date': instance.date.toIso8601String(),
      'propertyPurchased': instance.propertyPurchased,
      'propertyPurchasedBy': instance.propertyPurchasedBy,
    };

_$PropertyPurchasedByImpl _$$PropertyPurchasedByImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyPurchasedByImpl(
      userID: json['userID'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$PropertyPurchasedByImplToJson(
        _$PropertyPurchasedByImpl instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'name': instance.name,
    };
