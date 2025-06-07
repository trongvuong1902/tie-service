import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:tie_service/places_view.dart/model/place_model.dart';
part 'places_cubit.freezed.dart';
part 'places_state.dart';

@injectable
class PlacesCubit extends Cubit<PlacesState> {
  PlacesCubit() : super(PlacesState());

  void getPlaces(Position position) async {
    final functions = FirebaseFunctions.instanceFor(region: 'us-central1');
    try {
      final res = await functions
          .httpsCallable('getNearbyMotoServicesShop')
          .call<Map<String, dynamic>>({
        'data': {
          'latitude': position.latitude,
          'longitude': position.longitude,
        }
      });

      final data = json.decode(jsonEncode(res.data));

      final places = data['places']
          .map((w) => PlaceModel.fromJson(w))
          .whereType<PlaceModel>()
          .toList();

      emit(state.copyWith(places: places));
    } on FirebaseFunctionsException catch (e) {
      print(e);
    }
  }
}
