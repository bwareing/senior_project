import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'package:mysql1/mysql1.dart';
import 'package:flutter_application_1/views/screens/clander.dart';
import 'package:flutter_application_1/views/screens/newuser.dart';

class dataBaseConnection_appoiment {
  Future buildDatabaseconnection_appoiment(
      time, date, person_meet, ruser_id) async {
    final conn = await MySqlConnection.connect(ConnectionSettings(
        host: '10.0.2.2',
        port: 3306,
        user: 'root',
        password: 'passwordBD',
        db: 'senior'));
    print('in appoiment');
    var inserted = await conn.query(
        'insert into appoiments(time,date,person_meet,user_id) values (?,?,?,?)',
        [time, date, person_meet, ruser_id]);
    conn.close();
  }
}
