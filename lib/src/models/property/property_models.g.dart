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
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$PropertyLocationImplToJson(
        _$PropertyLocationImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'type': instance.type,
    };

_$PropertyImageImpl _$$PropertyImageImplFromJson(Map<String, dynamic> json) =>
    _$PropertyImageImpl(
      id: json['id'] as String,
      image: json['image'] == null
          ? null
          : PropertyImageModel.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PropertyImageImplToJson(_$PropertyImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
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

_$PropertyImageModelImpl _$$PropertyImageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyImageModelImpl(
      id: json['id'] as String?,
      alt: json['alt'] as String?,
      filename: json['filename'] as String?,
      mimeType: json['mimeType'] as String?,
      filesize: (json['filesize'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      focalX: (json['focalX'] as num?)?.toInt(),
      focalY: (json['focalY'] as num?)?.toInt(),
      sizes: json['sizes'] == null
          ? null
          : PropertyImageSizes.fromJson(json['sizes'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$PropertyImageModelImplToJson(
        _$PropertyImageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alt': instance.alt,
      'filename': instance.filename,
      'mimeType': instance.mimeType,
      'filesize': instance.filesize,
      'width': instance.width,
      'height': instance.height,
      'focalX': instance.focalX,
      'focalY': instance.focalY,
      'sizes': instance.sizes,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'url': instance.url,
    };

_$PropertyImageSizesImpl _$$PropertyImageSizesImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyImageSizesImpl(
      thumbnail: json['thumbnail'] == null
          ? null
          : PropertyThumbnail.fromJson(
              json['thumbnail'] as Map<String, dynamic>),
      card: json['card'] == null
          ? null
          : PropertyThumbnail.fromJson(json['card'] as Map<String, dynamic>),
      tablet: json['tablet'] == null
          ? null
          : PropertyThumbnail.fromJson(json['tablet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PropertyImageSizesImplToJson(
        _$PropertyImageSizesImpl instance) =>
    <String, dynamic>{
      'thumbnail': instance.thumbnail,
      'card': instance.card,
      'tablet': instance.tablet,
    };

_$PropertyThumbnailImpl _$$PropertyThumbnailImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyThumbnailImpl(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      mimeType: json['mimeType'] as String?,
      filesize: (json['filesize'] as num?)?.toInt(),
      filename: json['filename'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$PropertyThumbnailImplToJson(
        _$PropertyThumbnailImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'mimeType': instance.mimeType,
      'filesize': instance.filesize,
      'filename': instance.filename,
      'url': instance.url,
    };
