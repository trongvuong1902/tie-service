import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tie_service/injection.dart';
import 'package:tie_service/location/cubit/location_cubit.dart';
import 'package:tie_service/places_view.dart/cubit/places_cubit.dart';
import 'package:tie_service/places_view.dart/model/place_model.dart';

class PlacesView extends StatefulWidget {
  const PlacesView({super.key});

  @override
  State<PlacesView> createState() => _PlacesViewState();
}

class _PlacesViewState extends State<PlacesView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<PlacesCubit>(
          create: (context) => getIt<PlacesCubit>()
            ..getPlaces(context.read<LocationCubit>().state.currentPosition!),
          child: BlocListener<LocationCubit, LocationState>(
            listenWhen: (p, c) => p.currentPosition != c.currentPosition,
            listener: (context, state) {
              if (state.currentPosition != null) {}
            },
            child: BlocBuilder<PlacesCubit, PlacesState>(
              builder: (context, state) {
                return state.places == null
                    ? CircularProgressIndicator()
                    : SingleChildScrollView(
                        child: BlocBuilder<PlacesCubit, PlacesState>(
                          builder: (context, state) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: (state.places ?? [])
                                  .map(
                                    (e) => Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                3,
                                            child: (e.photos ?? []).isEmpty
                                                ? SizedBox()
                                                : CachedNetworkImage(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    imageUrl:
                                                        e.photos!.first.url,
                                                    fit: BoxFit.cover,
                                                  )),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                e.displayName.toString(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelLarge,
                                              ),
                                              Row(
                                                children: [
                                                  Text(e.rating.toString()),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 16,
                                                    color:
                                                        Colors.yellow.shade600,
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text(
                                                    '(${e.userRatingCount})',
                                                  ),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(' - ${e.shortAddress}'),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                  .toList(),
                            );
                          },
                        ),
                      );
              },
            ),
          )),
    );
  }
}
