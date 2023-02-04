import 'dart:html';
import 'package:flutter/material.dart';
import 'package:my_app/views/screens/aboutus.dart';
import 'package:my_app/views/screens/newuser.dart';

class Loginin extends StatefulWidget{
  @override
  _Loginin createState()=> _Loginin();
}

  class _Loginin extends State<Loginin> {
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text('Counselor Outreach'),
          actions: [
            IconButton(
              iconSize: 30,
              icon: const Icon(Icons.info_outline_rounded),
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder:(context)=>  OurStory()));
              },)
          ],
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 59, 77, 86),
             
    ),
        body: Center( 
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ 
          Expanded(
            child: SizedBox(
              width: 150,
              child: ListView(children:[
                const SizedBox(height: 40,),
                TextFormField(
                  decoration: const InputDecoration(
                    border:  OutlineInputBorder(),
                    labelText: 'Username',
                    isDense: true,
                    contentPadding: EdgeInsets.all(8),
                    
                  ) ,
                ),
                const SizedBox(height: 15,),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    isDense: true,
                    contentPadding: EdgeInsets.all(8),

                   ),
                ),
              const SizedBox(height: 15,),
              ElevatedButton(onPressed:() {} , child: Text('Log In')),
              Text('                   or'),
              ElevatedButton(onPressed: () {
                 Navigator.push(context,
                MaterialPageRoute(builder:(context)=>  NewUser()));
              }, child: const Text('New User'))
              ],),
            ),
          ),
           

            const Text(
              "Suicide Hotline phone number: 988",
              style:TextStyle(fontSize: 25), 
              ),  
            ],
        ),
        ),
      );
    }
  }


