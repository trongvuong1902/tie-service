part of 'location_cubit.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    Position? currentPosition,
  }) = _LocationState;
}
