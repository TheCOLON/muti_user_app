// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return macos;
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
    apiKey: 'AIzaSyA7ZQ4iUViaTbGi1_SnyWHH4nBax6YaKgI',
    appId: '1:225010099817:web:23335cb3a4e2f5d4e664f8',
    messagingSenderId: '225010099817',
    projectId: 'multi-user-65c73',
    authDomain: 'multi-user-65c73.firebaseapp.com',
    storageBucket: 'multi-user-65c73.appspot.com',
    measurementId: 'G-M14P1KBL3J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDGnT1XvGWhaeny17hu4L3_kzjxXtBLLJI',
    appId: '1:225010099817:android:be8893b6d314703ae664f8',
    messagingSenderId: '225010099817',
    projectId: 'multi-user-65c73',
    storageBucket: 'multi-user-65c73.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAqXuPz4pC3lltuJ4NQIR982jFIbAS3o3U',
    appId: '1:225010099817:ios:9bba8c85a7e5425fe664f8',
    messagingSenderId: '225010099817',
    projectId: 'multi-user-65c73',
    storageBucket: 'multi-user-65c73.appspot.com',
    iosClientId: '225010099817-2mf0un1cb178di2lpc5f9re5g0vnju6v.apps.googleusercontent.com',
    iosBundleId: 'com.example.multiUser',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAqXuPz4pC3lltuJ4NQIR982jFIbAS3o3U',
    appId: '1:225010099817:ios:9bba8c85a7e5425fe664f8',
    messagingSenderId: '225010099817',
    projectId: 'multi-user-65c73',
    storageBucket: 'multi-user-65c73.appspot.com',
    iosClientId: '225010099817-2mf0un1cb178di2lpc5f9re5g0vnju6v.apps.googleusercontent.com',
    iosBundleId: 'com.example.multiUser',
  );
}