import 'dart:html';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:my_app/views/screens/homepage.dart';
import 'package:http/http.dart' as http;

class NewUser extends StatefulWidget {
  @override
  _NewUser createState() => _NewUser();
}

class _NewUser extends State<NewUser> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _addressController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _zipController = TextEditingController();
  final _counslerController = TextEditingController();
  final _userNameController = TextEditingController();
  final _passWordController = TextEditingController();
  String dropdownvalue = '---';
  var objFile = null;
  static List<String> choices = ['---', 'yes', 'no'];

  void _chooseFileUsingFilePicker() async {
    var result = await FilePicker.platform.pickFiles(
      withReadStream: true,
    );
    if (result != null) {
      setState(() {
        objFile = result.files.single;
      });
    }
  }

  void uploadSelectedFile() async {
    final request = http.MultipartRequest(
      "POST",
      Uri.parse("api url"),
    );
    //request.fields["id"] = "abc";
    request.files.add(http.MultipartFile(
        "parameter name server side", objFile.readStream, objFile.size,
        filename: objFile.name));

    var resp = await request.send();

    String result = await resp.stream.bytesToString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New User'),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 59, 77, 86),
      ),
      body: Center(
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
                  width: 150,
                  child: ListView(
                    children: [
                      const Text("new user form",
                          style: TextStyle(fontSize: 20)),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _firstNameController,
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
                      TextFormField(
                        controller: _lastNameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Last name',
                          isDense: true,
                          contentPadding: EdgeInsets.all(8),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: _emailController,
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
                      TextFormField(
                        controller: _addressController,
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
                      TextFormField(
                        controller: _cityController,
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
                      TextFormField(
                        controller: _stateController,
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
                      TextFormField(
                        controller: _zipController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'zip',
                          isDense: true,
                          contentPadding: EdgeInsets.all(8),
                        ),
                      ),
                      const Text("Counselor?", style: TextStyle(fontSize: 15)),
                      DropdownButton(
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down_rounded),
                        items: choices.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                      const Text("If yes please upload proof",
                          style: TextStyle(fontSize: 15)),
                      ElevatedButton(
                          child: const Text("Choose File"),
                          onPressed: () => _chooseFileUsingFilePicker()),
                      if (objFile != null) Text("File name: ${objFile.name}"),
                      const SizedBox(
                        height: 7,
                      ),
                      ElevatedButton(
                          child: const Text("upload file"),
                          onPressed: () => uploadSelectedFile()),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: _userNameController,
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
                      TextFormField(
                        controller: _passWordController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          isDense: true,
                          contentPadding: EdgeInsets.all(8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
