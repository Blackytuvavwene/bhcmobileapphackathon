// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyImpl _$$PropertyImplFromJson(Map<String, dynamic> json) =>
    _$PropertyImpl(
      name: json['name'] as String,
      value: json['value'] as String,
      id: json['id'] as String,
      category: json['category'] as String?,
      location:
          PropertyLocation.fromJson(json['location'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      description: json['description'] as String,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => PropertyImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PropertyImplToJson(_$PropertyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'id': instance.id,
      'category': instance.category,
      'location': instance.location,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'description': instance.description,
      'images': instance.images,
    };

_$PropertyLocationImpl _$$PropertyLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyLocationImpl(
      address: json['address'] as String,
      type: $enumDecodeNullable(_$PropertyLocationTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$PropertyLocationImplToJson(
        _$PropertyLocationImpl instance) =>
    <String, dynamic>{
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
      url: json['url'] as String?,
      id: json['id'] as String,
      alt: json['alt'] as String,
      updatedAt: json['updatedAt'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$PropertyImageImplToJson(_$PropertyImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'id': instance.id,
      'alt': instance.alt,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
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
      purchaseID: json['purchaseID'] as String?,
      documents: (json['documents'] as List<dynamic>)
          .map((e) =>
              PropertyPurchaseDocuments.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PropertyPurchaseImplToJson(
        _$PropertyPurchaseImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'date': instance.date.toIso8601String(),
      'propertyPurchased': instance.propertyPurchased,
      'propertyPurchasedBy': instance.propertyPurchasedBy,
      'purchaseID': instance.purchaseID,
      'documents': instance.documents,
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

_$PropertyPurchaseDocumentsImpl _$$PropertyPurchaseDocumentsImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyPurchaseDocumentsImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$PropertyPurchaseDocumentsImplToJson(
        _$PropertyPurchaseDocumentsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
