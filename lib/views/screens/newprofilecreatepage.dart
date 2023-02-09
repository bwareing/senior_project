import 'dart:html';
import 'package:flutter/material.dart';
import 'package:my_app/views/screens/homepage.dart';

class NewUser extends StatefulWidget{
  @override
  _NewUser createState()=> _NewUser();
}

class _NewUser extends State<NewUser>{

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _addressController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _zipController = TextEditingController();
  final _counslerController = TextEditingController();
  final _schoolController = TextEditingController();
  final _degreeController = TextEditingController();
  final _degreeLevelController = TextEditingController();
  final _userNameController = TextEditingController();
  final _passWordController =TextEditingController();

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
        Expanded(
          child: SizedBox(
            width: 150,
            child: ListView(children: [
              const SizedBox(height: 40,),
              TextFormField(
                controller: _firstNameController,
                decoration: const InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'First Name',
                 isDense: true,
                 contentPadding: EdgeInsets.all(8),
                ),
                ),
            
            const SizedBox(height: 15,),
            TextFormField(
              controller: _lastNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Last name',
                isDense: true,
                contentPadding: EdgeInsets.all(8),
              ),
            ),
            
            const SizedBox(height: 15,),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'email',
                isDense: true,
                contentPadding: EdgeInsets.all(8),
            ),
            ),
             
             const SizedBox(height: 15,),
             TextFormField(
              controller: _addressController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'address',
                isDense: true,
                contentPadding: EdgeInsets.all(8),
              ),

             )
            
            ],

            ),
          )

        ),
      ],
      
        ),
     ),
  );
   
  }
}

