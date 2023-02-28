import 'dart:async';
import 'dart:io';
import 'package:mysql1/mysql1.dart';
import 'package:flutter_application_1/views/screens/homepage.dart';
import 'package:flutter_application_1/views/screens/newuser.dart';

class dataBaseConnection {
  Future buildDatabaseconnection() async {
    print("connecting to data base");
    final conn = await MySqlConnection.connect(ConnectionSettings(
        host: 'localhost',
        port: 3306,
        user: 'root',
        password: 'passwordBD',
        db: 'senior'));
    return conn;
  }
}
