import 'package:flutter/material.dart';
import 'package:my_app/views/screens/homepage.dart';


void main(){
  runApp(Counsler());
}

class Counsler extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counsler outreach ',
      home: Loginin(),

    );
    
  }
}

