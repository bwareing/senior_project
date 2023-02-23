import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_app/views/screens/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyDljsNoPqyzRoJfHSZys1UyExtHPpUh1lY",
    appId: "1:403984177263:web:4ba0632f330dc6ff38159a",
    messagingSenderId: "403984177263",
    projectId: "glossy-essence-309917",
    databaseURL: "https://glossy-essence-309917-default-rtdb.firebaseio.com",
  ));
  runApp(Counsler());
}

class Counsler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counsler outreach ',
      home: Loginin(),
    );
  }
}
