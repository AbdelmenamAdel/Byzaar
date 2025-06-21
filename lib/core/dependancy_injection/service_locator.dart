import 'package:byzaar/core/services/local/local_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  sl.registerSingletonAsync<LocalStorage>(() async {
    final prefs = await SharedPreferences.getInstance();
    return LocalStorage(sharedInstance: prefs);
  });

  await sl.allReady();
}
