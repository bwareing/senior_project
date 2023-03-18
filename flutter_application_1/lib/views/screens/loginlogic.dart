import 'dart:async';
import 'dart:convert' as convert;
import 'dart:ffi';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';
import 'package:flutter_application_1/views/screens/homepage.dart';
import 'package:flutter_application_1/views/screens/newuser.dart';

class dataBase_check {
  dynamic rightLog;
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
    //turn query results into string
    for (var row in check) {
      results += row.toString();
    }

    for (var row in check2) {
      results2 += row.toString();
    }
    //logic to check if log in is
    if (results == 'Fields: {password: $password}') {
      if (results2 == 'Fields: {email: $email}') {
        rightLog = true;
      } else {
        rightLog = false;
      }
    } else {
      rightLog = false;
    }
    return rightLog;
  }
}
