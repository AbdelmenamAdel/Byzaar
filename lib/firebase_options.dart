// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDegdB10K9bgv05WVSvhhg-70dIeysTOoM',
    appId: '1:840323369559:web:0936a0f84f1dea0c663112',
    messagingSenderId: '840323369559',
    projectId: 'mogha-266d4',
    authDomain: 'mogha-266d4.firebaseapp.com',
    storageBucket: 'mogha-266d4.appspot.com',
    measurementId: 'G-Y5Y4JWCP0T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBlVe01jcmzcjj_ivuuLegzzvjOi2eb6tM',
    appId: '1:840323369559:android:35c8ea6e850127a4663112',
    messagingSenderId: '840323369559',
    projectId: 'mogha-266d4',
    storageBucket: 'mogha-266d4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDvu_SNACvTs3ORMMbQ_tJqVkeGIkoNSG4',
    appId: '1:840323369559:ios:2795600718f0e3f0663112',
    messagingSenderId: '840323369559',
    projectId: 'mogha-266d4',
    storageBucket: 'mogha-266d4.appspot.com',
    iosClientId: '840323369559-lm3q795k0cjqd43p3qqtiulcl1cl20fe.apps.googleusercontent.com',
    iosBundleId: 'com.example.fruitHub',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDegdB10K9bgv05WVSvhhg-70dIeysTOoM',
    appId: '1:840323369559:web:f2dcad7311e310d2663112',
    messagingSenderId: '840323369559',
    projectId: 'mogha-266d4',
    authDomain: 'mogha-266d4.firebaseapp.com',
    storageBucket: 'mogha-266d4.appspot.com',
    measurementId: 'G-18698BDFN7',
  );
}
