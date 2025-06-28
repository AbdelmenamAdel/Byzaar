import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/app/fruit_hub.dart';
import 'package:fruit_hub/core/app/app_cubit/app_cubit.dart';
import 'package:fruit_hub/core/app/bloc_observer.dart';
import 'package:fruit_hub/core/app/internet_settings/connectivity_controller.dart';
import 'package:fruit_hub/core/common/widgets/error_widget.dart';
import 'package:fruit_hub/core/services/dependancy_injection/service_locator.dart';
import 'package:fruit_hub/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  _setupGlobalConfigs();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setupInjector();
  await ConnectivityController.instance.init();
  // await _initDependencies();
  // await _setDeviceOrientation();

  runApp(const AppRoot());
}

void _setupGlobalConfigs() {
  flutterErrorWidget();
  AppBlocObserver.init();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
}

// Future<void> _initDependencies() async {}

// Future<void> _setDeviceOrientation() {
//   return SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown,
//   ]);
// }

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AppCubit()..getLang(),
      child: const FruitHub(),
    );
  }
}
