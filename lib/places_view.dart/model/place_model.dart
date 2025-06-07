import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tie_service/places_view.dart/model/google_photo_place.dart';
import 'package:tie_service/places_view.dart/model/location_model.dart';

import 'address_component.dart';
part 'place_model.g.dart';

String _displayTextFromJson(Map? json) {
  if (json == null) return '';
  return json['text'] as String? ?? '';
}

@JsonSerializable()
class PlaceModel {
  final LocationModel? location;
  final int? userRatingCount;
  final num? rating;
  @JsonKey(fromJson: _displayTextFromJson)
  final String? displayName;

  final List<GooglePhotoPlace>? photos;
  @Default(<AddressComponent>[])
  List<AddressComponent> addressComponents;

  factory PlaceModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceModelFromJson(json);

  PlaceModel({
    this.location,
    required this.userRatingCount,
    required this.displayName,
    required this.photos,
    required this.addressComponents,
    this.rating,
  });
}

extension PlaceModelExtension on PlaceModel {
  String get shortAddress => addressComponents
      .where((element) => !element.types.any(
            (e) => ['administrative_area_level_1', 'postal_code', 'political']
                .contains(e),
          ))
      .map(
        (e) => e.shortName,
      )
      .join(', ');
}
