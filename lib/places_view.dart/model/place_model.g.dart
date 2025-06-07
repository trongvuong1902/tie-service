// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceModel _$PlaceModelFromJson(Map<String, dynamic> json) => PlaceModel(
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      userRatingCount: (json['userRatingCount'] as num?)?.toInt(),
      displayName: _displayTextFromJson(json['displayName'] as Map?),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => GooglePhotoPlace.fromJson(e as Map<String, dynamic>))
          .toList(),
      addressComponents: (json['addressComponents'] as List<dynamic>)
          .map((e) => AddressComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating: json['rating'] as num?,
    );

Map<String, dynamic> _$PlaceModelToJson(PlaceModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'userRatingCount': instance.userRatingCount,
      'rating': instance.rating,
      'displayName': instance.displayName,
      'photos': instance.photos,
      'addressComponents': instance.addressComponents,
    };
