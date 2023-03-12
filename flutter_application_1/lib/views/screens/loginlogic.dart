import 'dart:async';
import 'dart:convert' as convert;
import 'dart:ffi';
//import 'dart:html';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';
import 'package:flutter_application_1/views/screens/homepage.dart';
import 'package:flutter_application_1/views/screens/newuser.dart';

class dataBase_check {
  Future buildDatabase_check(email, password) async {
    final conn = await MySqlConnection.connect(ConnectionSettings(
        host: '10.0.2.2',
        port: 3306,
        user: 'root',
        password: 'passwordBD',
        db: 'senior'));

    var check =
        await conn.query('select password from users where email = ?', [email]);

    var check2 = await conn
        .query('select email from users where password = ?', [password]);

    String results = '';
    String results2 = '';

    for (var row in check) {
      results += row.toString();
    }

    for (var row in check2) {
      results2 += row.toString();
    }

    print(results);

    if (results == 'Fields: {password: $password}') {
      print('yes');
    } else {
      print('no');
    }

    if (results2 == 'Fields: {email: $email}') {
      print('yes');
    } else {
      print('no');
    }

    //var json = convert.jsonDecode(check);
  }
}
