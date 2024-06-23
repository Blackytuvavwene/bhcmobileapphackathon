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
    String? propertyID,
    String? category,
    PropertyLocation? location,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<PropertyImage>? images,
  }) = _Property;

  factory Property.fromJson(Map<String, Object?> json) =>
      _$PropertyFromJson(json);
}

// property location
@freezed
class PropertyLocation with _$PropertyLocation {
  const factory PropertyLocation({
    required double latitude,
    required double longitude,
    String? address,
    PropertyLocationType? type,
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
    required String imageUrl,
    String? propertyID,
    String? imageID,
    String? name,
    required double width,
    required double height,
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
