import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tie_service/injection.dart';
import 'package:tie_service/location/cubit/location_cubit.dart';
import 'firebase_options.dart';
import 'places_view.dart/places_view.dart';

const String localIp = "127.0.0.1";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();
  if (kDebugMode) {
    try {
      final functions = FirebaseFunctions.instanceFor(region: 'us-central1');
      functions.useFunctionsEmulator(localIp, 5001);

      // Optional: Disable persistence for easier testing
      // FirebaseFirestore.instance.settings = Settings(
      //   persistenceEnabled: false,
      //   host: 'localhost:8080',
      //   sslEnabled: false,
      // );
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        lazy: false,
        create: (context) => getIt.call<LocationCubit>()
          ..askPermissionLocationService()
          ..getCurrentLocation(),
        child: Scaffold(
          body: BlocBuilder<LocationCubit, LocationState>(
            builder: (context, state) {
              return Center(
                  child: state.currentPosition == null
                      ? Text('Đang lấy vị trí ...')
                      : PlacesView());
            },
          ),
        ),
      ),
    );
  }
}
