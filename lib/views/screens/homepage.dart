import 'package:flutter/material.dart';

class Loginin extends StatefulWidget{
  @override
  _Loginin createState()=> _Loginin();
}

  class _Loginin extends State<Loginin> {
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text('Counsler OutReach'),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 59, 77, 86),

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 0.5 * MediaQuery.of(context).size.width,
              child:TextField()),
              
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              ElevatedButton(onPressed:() {} , child: Text('Log in')),
              ],
            ),  

          ],
        ),
      );
    }
  }

