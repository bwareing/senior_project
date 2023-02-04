import 'dart:html';
import 'package:flutter/material.dart';
import 'package:my_app/views/screens/homepage.dart';

class NewUser extends StatefulWidget{
  @override
  _NewUser createState()=> _NewUser();
}

class _NewUser extends State<NewUser>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text('New User'),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 59, 77, 86),

      ),
   body:Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Expanded(child: SizedBox(
          width: 150,
          child: ListView(children: [
            const SizedBox(height: 40,),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
                isDense: true,
                contentPadding: EdgeInsets.all(8),

              ) ,

            ),

          ],

          ),
        ),  
        ),
        
      ],

    ),
    ),
   );
  }
}

