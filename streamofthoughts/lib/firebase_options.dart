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
    apiKey: 'AIzaSyBkEjuo2MayJ5QHwJPdYLuORzTHnAzpXNU',
    appId: '1:684296137056:web:6c2561cbf5259bbb0a1605',
    messagingSenderId: '684296137056',
    projectId: 'social-by-creationdriven',
    authDomain: 'social-by-creationdriven.firebaseapp.com',
    storageBucket: 'social-by-creationdriven.appspot.com',
    measurementId: 'G-GC24G5E6X9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCsWS5akxO587bNqvur_YYW5E969J_X1EY',
    appId: '1:684296137056:android:5fb2fb2b88fae60b0a1605',
    messagingSenderId: '684296137056',
    projectId: 'social-by-creationdriven',
    storageBucket: 'social-by-creationdriven.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC4bDNR3EqBkYyR4VRcpRHbStuX-kL6nS8',
    appId: '1:684296137056:ios:fc9c257a018a6ec10a1605',
    messagingSenderId: '684296137056',
    projectId: 'social-by-creationdriven',
    storageBucket: 'social-by-creationdriven.appspot.com',
    iosClientId: '684296137056-mmdkqjsh229l1et0bc805j8pq3v58q5k.apps.googleusercontent.com',
    iosBundleId: 'com.creationdriven.createSocial',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC4bDNR3EqBkYyR4VRcpRHbStuX-kL6nS8',
    appId: '1:684296137056:ios:fc9c257a018a6ec10a1605',
    messagingSenderId: '684296137056',
    projectId: 'social-by-creationdriven',
    storageBucket: 'social-by-creationdriven.appspot.com',
    iosClientId: '684296137056-mmdkqjsh229l1et0bc805j8pq3v58q5k.apps.googleusercontent.com',
    iosBundleId: 'com.creationdriven.createSocial',
  );
}