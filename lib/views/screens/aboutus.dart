import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_app/views/screens/homepage.dart';

class OurStory extends StatefulWidget{
  @override
  _OurStory createState()=> _OurStory();

}

class _OurStory extends State<OurStory>{
  @override
  Widget build(BuildContext context){
         return Scaffold(
        appBar: AppBar(
          title: const Text('Our story/Purpose'),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 59, 77, 86),
             
        ),
         );
  }
}