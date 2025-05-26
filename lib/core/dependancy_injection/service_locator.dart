import 'package:byzaar/core/services/local/local_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  sl.registerFactory(
      () => LocalStorage(secureStorage: const FlutterSecureStorage()));
}
