import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCEnfRX7u4lslCqprPkqwtzZw8cXWT2LGs",
            authDomain: "capsule-alpha.firebaseapp.com",
            projectId: "capsule-alpha",
            storageBucket: "capsule-alpha.appspot.com",
            messagingSenderId: "693225400524",
            appId: "1:693225400524:web:9e45083bf6193370d0ba69"));
  } else {
    await Firebase.initializeApp();
  }
}
