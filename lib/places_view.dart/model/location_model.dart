import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.g.dart';

@JsonSerializable(anyMap: true)
class LocationModel {
  final double latitude;
  final double longitude;

  LocationModel({required this.latitude, required this.longitude});

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
