import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'package:mysql1/mysql1.dart';
import 'package:flutter_application_1/views/screens/clander.dart';
import 'package:flutter_application_1/views/screens/newuser.dart';

class dataBaseConnection_user {
  Future buildDatabaseconnection_user(time, date, meet_person) async {
    final conn = await MySqlConnection.connect(ConnectionSettings(
        host: '10.0.2.2',
        port: 3306,
        user: 'root',
        password: 'passwordBD',
        db: 'senior'));

    var inserted = await conn
        .query('insert into users(time,date,meet_person) values (?,?,?)', [
      time,
      date,
      meet_person,
    ]);
    conn.close();
  }
}
