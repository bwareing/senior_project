import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/screens/homepage.dart';

void main() {
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
