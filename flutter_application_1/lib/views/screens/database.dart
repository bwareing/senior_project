import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'package:mysql1/mysql1.dart';
import 'package:flutter_application_1/views/screens/homepage.dart';
import 'package:flutter_application_1/views/screens/newuser.dart';

class dataBaseConnection {
  Future buildDatabaseconnection(
      name, email, address, city, state, zip, username, password) async {
    //print("connecting to data base");
    final conn = await MySqlConnection.connect(ConnectionSettings(
        host: '192.168.0.220',
        port: 3306,
        user: 'root',
        password: 'passwordBD',
        db: 'senior'));

    var inserted = await conn.query(
        'insert into users(name,email,address,city,state,zip,username,password) values (?,?,?,?,?,?,?,?)',
        [
          name,
          email,
          address,
          city,
          state,
          zip,
          username,
          password,
        ]);
  }
}
