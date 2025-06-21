import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:byzaar/app/fruit_hub.dart';
import 'package:byzaar/core/app/app_cubit/app_cubit.dart';
import 'package:byzaar/core/app/bloc_observer.dart';
import 'package:byzaar/core/app/internet_settings/connectivity_controller.dart';
import 'package:byzaar/core/common/widgets/error_widget.dart';
import 'package:byzaar/core/dependancy_injection/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  _setupGlobalConfigs();
  await _initDependencies();
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

Future<void> _initDependencies() async {
  await setupInjector();
  await ConnectivityController.instance.init();
}

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
