import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// import generated code
part 'property_models.freezed.dart';
// import serialized code
part 'property_models.g.dart';

@freezed
class Property with _$Property {
  const factory Property({
    required String name,
    required String value,
    required String id,
    String? category,
    required PropertyLocation location,
    required String createdAt,
    required String updatedAt,
    required String description,
    List<PropertyImage>? images,
  }) = _Property;

  factory Property.fromJson(Map<String, Object?> json) =>
      _$PropertyFromJson(json);
}

// property location
@freezed
class PropertyLocation with _$PropertyLocation {
  const factory PropertyLocation({
    required String address,
    String? type,
  }) = _PropertyLocation;

  factory PropertyLocation.fromJson(Map<String, Object?> json) =>
      _$PropertyLocationFromJson(json);
}

// enum for property location type city, village, etc
enum PropertyLocationType {
  city,
  village,
  town,
}

// property images
@freezed
class PropertyImage with _$PropertyImage {
  const factory PropertyImage({
    required String id,
    PropertyImageModel? image,
  }) = _PropertyImage;

  factory PropertyImage.fromJson(Map<String, Object?> json) =>
      _$PropertyImageFromJson(json);
}

// property purchase
@freezed
class PropertyPurchase with _$PropertyPurchase {
  const factory PropertyPurchase({
    required double price,
    required DateTime date,
    required Property propertyPurchased,
    required PropertyPurchasedBy propertyPurchasedBy,
    String? purchaseID,
    required List<PropertyPurchaseDocuments> documents,
  }) = _PropertyPurchase;

  factory PropertyPurchase.fromJson(Map<String, Object?> json) =>
      _$PropertyPurchaseFromJson(json);
}

// property purchased by
@freezed
class PropertyPurchasedBy with _$PropertyPurchasedBy {
  const factory PropertyPurchasedBy({
    required String userID,
    required String name,
  }) = _PropertyPurchasedBy;

  factory PropertyPurchasedBy.fromJson(Map<String, Object?> json) =>
      _$PropertyPurchasedByFromJson(json);
}

// property purchase documents
@freezed
class PropertyPurchaseDocuments with _$PropertyPurchaseDocuments {
  const factory PropertyPurchaseDocuments({
    required String name,
    required String url,
  }) = _PropertyPurchaseDocuments;

  factory PropertyPurchaseDocuments.fromJson(Map<String, Object?> json) =>
      _$PropertyPurchaseDocumentsFromJson(json);
}

@freezed
class PropertyImageModel with _$PropertyImageModel {
  const factory PropertyImageModel({
    String? id,
    String? alt,
    String? filename,
    String? mimeType,
    int? filesize,
    int? width,
    int? height,
    int? focalX,
    int? focalY,
    PropertyImageSizes? sizes,
    String? createdAt,
    String? updatedAt,
    String? url,
  }) = _PropertyImageModel;

  factory PropertyImageModel.fromJson(Map<String, Object?> json) =>
      _$PropertyImageModelFromJson(json);
}

@freezed
class PropertyImageSizes with _$PropertyImageSizes {
  const factory PropertyImageSizes({
    PropertyThumbnail? thumbnail,
    PropertyThumbnail? card,
    PropertyThumbnail? tablet,
  }) = _PropertyImageSizes;

  factory PropertyImageSizes.fromJson(Map<String, Object?> json) =>
      _$PropertyImageSizesFromJson(json);
}

@freezed
class PropertyThumbnail with _$PropertyThumbnail {
  const factory PropertyThumbnail({
    int? width,
    int? height,
    String? mimeType,
    int? filesize,
    String? filename,
    String? url,
  }) = _PropertyThumbnail;

  factory PropertyThumbnail.fromJson(Map<String, Object?> json) =>
      _$PropertyThumbnailFromJson(json);
}
