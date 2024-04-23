import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD8kzLbyODfk6bpz9fcYRQFG3LoLV4Cmsw",
            authDomain: "winter-ea6a0.firebaseapp.com",
            projectId: "winter-ea6a0",
            storageBucket: "winter-ea6a0.appspot.com",
            messagingSenderId: "756199975638",
            appId: "1:756199975638:web:f29edb493526f76592b777",
            measurementId: "G-MFH3VQCYRT"));
  } else {
    await Firebase.initializeApp();
  }
}
