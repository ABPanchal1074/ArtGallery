import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
          'DefaultFirebaseOptions have not been configured for iOS - '
          'you can add it manually if needed',
        );
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDa80MH2p3WwD2XMLbydYdfoX8syc522_Y',
    appId: '1:495206467890:android:cc1904badf796c6374ef2b',
    messagingSenderId: '495206467890',
    projectId: 'art-gallery-a32aa',
    storageBucket: 'art-gallery-a32aa.appspot.com', // Fixed the storageBucket
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey:
        'AIzaSyDa80MH2p3WwD2XMLbydYdfoX8syc522_Y', // Same as Android or get web-specific key
    appId:
        '1:495206467890:web:cc1904badf796c6374ef2b', // Web app ID from Firebase
    messagingSenderId: '495206467890',
    projectId: 'art-gallery-a32aa',
    authDomain: 'art-gallery-a32aa.firebaseapp.com', // Add your auth domain
    storageBucket: 'art-gallery-a32aa.appspot.com',
    measurementId: 'G-XXXXXXXXXX', // Add if you have analytics enabled
  );
}
