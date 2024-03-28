import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCF6rEVy1jX67rhXA1lhJCk8xfwALe45aY",
            authDomain: "flixflow-13745.firebaseapp.com",
            projectId: "flixflow-13745",
            storageBucket: "flixflow-13745.appspot.com",
            messagingSenderId: "336784141211",
            appId: "1:336784141211:web:1b22dc5eeeb6fd46900f3e"));
  } else {
    await Firebase.initializeApp();
  }
}
