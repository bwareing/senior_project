import 'dart:ffi';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_application_1/views/screens/homepage.dart';
import 'package:flutter_application_1/views/screens/user_database.dart';
//////////////////////////////////////////////////////////////////////

class NewUser extends StatefulWidget {
  @override
  _NewUser createState() => _NewUser();
}

class _NewUser extends State<NewUser> {
/////////////////////////////////////////////////////////////////////
// Varibles needed for class
/////////////////////////////////////////////////////////////////////
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _addressController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _zipController = TextEditingController();
  final _userNameController = TextEditingController();
  final _passWordController = TextEditingController();
  late String realName;
  late String realEmail;
  late String realAddress;
  late String realCity;
  late String realState;
  late String realZip;
  late String realUsername;
  late String realPassword;
  var connection = new dataBaseConnection();
//////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New User'),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 59, 77, 86),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 150,
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      /////////////////////////////////////////////////
                      /// Name text field
                      /////////////////////////////////////////////////
                      TextFormField(
                        controller: _nameController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'First Name',
                          isDense: true,
                          contentPadding: EdgeInsets.all(8),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ////////////////////////////////////////////////
                      /// Email text field
                      ////////////////////////////////////////////////
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'email',
                          isDense: true,
                          contentPadding: EdgeInsets.all(8),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ////////////////////////////////////////////////
                      /// Address text field
                      /////////////////////////////////////////////////
                      TextFormField(
                        controller: _addressController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'address',
                          isDense: true,
                          contentPadding: EdgeInsets.all(8),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ////////////////////////////////////////////////
                      /// city text field
                      ////////////////////////////////////////////////
                      TextFormField(
                        controller: _cityController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'city',
                          isDense: true,
                          contentPadding: EdgeInsets.all(8),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ///////////////////////////////////////////////////
                      /// State text field
                      ///////////////////////////////////////////////////
                      TextFormField(
                        controller: _stateController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'state',
                          isDense: true,
                          contentPadding: EdgeInsets.all(8),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //////////////////////////////////////////////////
                      /// Zip text field
                      ///////////////////////////////////////////////////
                      TextFormField(
                        controller: _zipController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'zip',
                          isDense: true,
                          contentPadding: EdgeInsets.all(8),
                        ),
                      ),
                      /////////////////////////////////////////////////////
                      /// File upload
                      //////////////////////////////////////////////////////
                      const Text("If Counsler please upload proof of eduction",
                          style: TextStyle(fontSize: 15)),
                      ElevatedButton(
                          onPressed: () async {
                            FilePickerResult? result =
                                await FilePicker.platform.pickFiles();

                            if (result == null) {
                              print("no file selected");
                            } else {
                              setState(() {
                                result?.files.forEach((element) {
                                  print(element.name);
                                });
                              });
                            }
                          },
                          child: Text('upload')),
                      const SizedBox(
                        height: 15,
                      ),
                      ///////////////////////////////////////////////////
                      /// Username text field
                      ////////////////////////////////////////////////////
                      TextFormField(
                        controller: _userNameController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username',
                          isDense: true,
                          contentPadding: EdgeInsets.all(8),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      /////////////////////////////////////////////////////
                      /// password text field
                      /////////////////////////////////////////////////////
                      TextFormField(
                        controller: _passWordController,
                        keyboardType: TextInputType.text,
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
                      ///////////////////////////////////////////////////
                      /// Submit button
                      ////////////////////////////////////////////////////
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              realName = _nameController.text;
                              realEmail = _emailController.text;
                              realAddress = _addressController.text;
                              realCity = _cityController.text;
                              realState = _stateController.text;
                              realZip = _zipController.text;
                              realUsername = _userNameController.text;
                              realPassword = _passWordController.text;
                            });
                            //inserting into data base
                            connection.buildDatabaseconnection(
                                realName,
                                realEmail,
                                realAddress,
                                realCity,
                                realState,
                                realZip,
                                realUsername,
                                realPassword);
                          },
                          child: const Text('Sign Up')),
                      const Text(
                          "Please read rules tab before pressing sunbmit"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
