//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/screens/homepage.dart';
import 'package:flutter_application_1/views/screens/ourstory.dart';
import 'package:flutter_application_1/views/screens/newuser.dart';

class Loginin extends StatefulWidget {
  @override
  _Loginin createState() => _Loginin();
}

class _Loginin extends State<Loginin> {
  final _useremailController = TextEditingController();
  final _passWordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counselor Outreach'),
        actions: [
          IconButton(
            iconSize: 30,
            icon: const Icon(Icons.info_outline_rounded),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => OurStory()));
            },
          )
        ],
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 59, 77, 86),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                width: 150,
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      controller: _useremailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        isDense: true,
                        contentPadding: EdgeInsets.all(8),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: _passWordController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        isDense: true,
                        contentPadding: EdgeInsets.all(8),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            textStyle: const TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 12,
                        )),
                        onPressed: () {},
                        child: const Text('need help')),
                    const SizedBox(
                      height: 7,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          //signin(_useremailController as String,
                          // _passWordController as String);
                        },
                        child: Text('Log In')),
                    Text('                   or'),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewUser()));
                        },
                        child: const Text('New User'))
                  ],
                ),
              ),
            ),
            const Text(
              "Suicide Hotline phone number: 988",
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
