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
          Expanded(
              child: ListView(children:[
                TextFormField(
                  decoration: const InputDecoration(
                    border:  OutlineInputBorder(),
                    labelText: 'Enter your username',
                    isDense: true,
                    contentPadding: EdgeInsets.all(8),
                    
                  ) ,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter password',
                    isDense: true,
                    contentPadding: EdgeInsets.all(8),
                    
                  ),
                ),
              ],),
          ),
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


