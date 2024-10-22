import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAwVIXXL7re1Ukeut14WTlZNUsIryVN9dA",
            authDomain: "mr-abd-elrazek.firebaseapp.com",
            projectId: "mr-abd-elrazek",
            storageBucket: "mr-abd-elrazek.appspot.com",
            messagingSenderId: "925505132840",
            appId: "1:925505132840:web:a6b04a5a90eac52dd9981d"));
  } else {
    await Firebase.initializeApp();
  }
}
