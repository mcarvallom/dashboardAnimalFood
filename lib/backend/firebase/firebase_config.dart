import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCJ6hbihectpR4AQW7TrMFd5TdsU6j9-iM",
            authDomain: "animalfoodchileaplicacion.firebaseapp.com",
            projectId: "animalfoodchileaplicacion",
            storageBucket: "animalfoodchileaplicacion.appspot.com",
            messagingSenderId: "678069758837",
            appId: "1:678069758837:web:1d6d44c6c7ce1ee8ad013c",
            measurementId: "G-7KV7S394BQ"));
  } else {
    await Firebase.initializeApp();
  }
}
