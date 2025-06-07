import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_component.freezed.dart';
part 'address_component.g.dart';

@freezed
class AddressComponent with _$AddressComponent {
  factory AddressComponent({
    @JsonKey(name: 'longText') required String longName,
    @JsonKey(name: 'shortText') required String shortName,
    required List<String> types,
  }) = _AddressComponent;

  factory AddressComponent.fromJson(Map<String, dynamic> json) =>
      _$AddressComponentFromJson(json);
}
