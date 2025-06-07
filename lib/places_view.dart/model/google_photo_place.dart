import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_photo_place.g.dart';

@JsonSerializable()
class GooglePhotoPlace {
  final String url;

  factory GooglePhotoPlace.fromJson(Map<String, dynamic> json) =>
      _$GooglePhotoPlaceFromJson(json);

  GooglePhotoPlace({required this.url});
}
