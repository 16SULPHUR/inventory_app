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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDkU1wHV2Q86nAxFIlTNNexIk4Z90OjSDo',
    appId: '1:260509841803:web:1411558ea489f7a43c978e',
    messagingSenderId: '260509841803',
    projectId: 'flutter-e4634',
    authDomain: 'flutter-e4634.firebaseapp.com',
    databaseURL: 'https://flutter-e4634-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-e4634.appspot.com',
    measurementId: 'G-JJKWZM4MS3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD7LrdI-kGCaMUhlSK9mgGBY9RP-3kvf7c',
    appId: '1:260509841803:android:47f6a282a8f983683c978e',
    messagingSenderId: '260509841803',
    projectId: 'flutter-e4634',
    databaseURL: 'https://flutter-e4634-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-e4634.appspot.com',
  );
}
