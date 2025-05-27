import 'package:byzaar/app/byzaar.dart';
import 'package:byzaar/core/app/env.variable.dart';
import 'package:byzaar/core/app/bloc_observer.dart';
import 'package:byzaar/core/app/internet_settings/connectivity_controller.dart';
import 'package:byzaar/core/common/widgets/error_widget.dart';
import 'package:byzaar/core/dependancy_injection/service_locator.dart';
import 'package:byzaar/core/app/app_cubit/app_cubit.dart';
import 'package:byzaar/core/services/local/hive_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  flutterErrorWidget();
  AppBlocObserver.init();
  await setupInjector();
  await HiveDatabase().init();
  ConnectivityController.instance.init();
  // await EnvVariable.instance.init(envType: EnvTypeEnum.dev);
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AppCubit()..getLang(),
          ),
        ],
        child: const Byzaar(),
      ),
    );
  });
}
