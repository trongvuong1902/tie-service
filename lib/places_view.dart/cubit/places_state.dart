part of 'places_cubit.dart';

@freezed
class PlacesState with _$PlacesState {
  const factory PlacesState({
    List<PlaceModel>? places,
  }) = _PlacesState;
}
