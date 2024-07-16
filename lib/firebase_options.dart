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
        return macos;
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
    apiKey: 'AIzaSyCd2M8F2dVucX0NSs7yH-bzu9Urg-Z_KGo',
    appId: '1:917797525094:web:707c13d8d6fb4729887fa7',
    messagingSenderId: '917797525094',
    projectId: 'nursery-954dc',
    authDomain: 'nursery-954dc.firebaseapp.com',
    storageBucket: 'nursery-954dc.appspot.com',
    measurementId: 'G-K1ZG65C9CG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCB-deIlP5ngI4-UCgjqEatO-sSl-d4cY4',
    appId: '1:917797525094:android:0797ecb4981222c8887fa7',
    messagingSenderId: '917797525094',
    projectId: 'nursery-954dc',
    storageBucket: 'nursery-954dc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCWTvWEDRgfguWeUIuH9MaXSmScceO3yhM',
    appId: '1:917797525094:ios:b257a64794cd4222887fa7',
    messagingSenderId: '917797525094',
    projectId: 'nursery-954dc',
    storageBucket: 'nursery-954dc.appspot.com',
    iosBundleId: 'com.example.nursery',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCWTvWEDRgfguWeUIuH9MaXSmScceO3yhM',
    appId: '1:917797525094:ios:b257a64794cd4222887fa7',
    messagingSenderId: '917797525094',
    projectId: 'nursery-954dc',
    storageBucket: 'nursery-954dc.appspot.com',
    iosBundleId: 'com.example.nursery',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCd2M8F2dVucX0NSs7yH-bzu9Urg-Z_KGo',
    appId: '1:917797525094:web:6ad488e110845fd7887fa7',
    messagingSenderId: '917797525094',
    projectId: 'nursery-954dc',
    authDomain: 'nursery-954dc.firebaseapp.com',
    storageBucket: 'nursery-954dc.appspot.com',
    measurementId: 'G-FWHRRJWJ3T',
  );
}