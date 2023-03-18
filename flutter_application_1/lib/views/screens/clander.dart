import 'package:flutter/material.dart';

/////////////////////////////////////////////////////////
class setAppoiment extends StatefulWidget {
  @override
  _setAppoiment createState() => _setAppoiment();
}

class _setAppoiment extends State<setAppoiment> {
//////////////////////////////////////////////////////
  ///Varblies need for the class
///////////////////////////////////////////////////
  final _timeContorller = TextEditingController();
  final _dateContorller = TextEditingController();
  final _personContorller = TextEditingController();
  late String realTime;
  late String realDate;
  late String realPerson;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('set appoiment'),
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
                      ///////////////////////////////////////
                      ///Time text field
                      //////////////////////////////////////
                      TextFormField(
                        controller: _timeContorller,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'time',
                          isDense: true,
                          contentPadding: EdgeInsets.all(8),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ///////////////////////////////////
                      ///date text field
                      ///////////////////////////////////
                      TextFormField(
                        controller: _dateContorller,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'date',
                          isDense: true,
                          contentPadding: EdgeInsets.all(8),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //////////////////////////////
                      /// Date text field
                      //////////////////////////////
                      TextFormField(
                        controller: _dateContorller,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'with who',
                          isDense: true,
                          contentPadding: EdgeInsets.all(8),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      /////////////////////////////
                      /// Set appoiment
                      ////////////////////////////
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              realTime = _timeContorller.text;
                              realDate = _dateContorller.text;
                              realPerson = _personContorller.text;
                            });
                          },
                          child: Text("Put in calnder")),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                          'Appoiments will show up on your welcome page after you set them',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold)),
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
