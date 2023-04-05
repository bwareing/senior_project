import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';

class dataBaseConnection_appoiment_set {
  String user_id_string = "";
  late int users_number;
  Future buildDatabaseconnection_appoiment(email) async {
    print("connecting to data base");
    final conn = await MySqlConnection.connect(ConnectionSettings(
        host: '10.0.2.2',
        port: 3306,
        user: 'root',
        password: 'passwordBD',
        db: 'senior'));

    var check_user_id =
        await conn.query('select user_id from users where email = ?', [email]);

    for (var row in check_user_id) {
      user_id_string += row.toString();
    }

    final splitted = user_id_string.split(':');
    String firstsplit = splitted[6];
    final splitted2 = firstsplit.split('}');
    String finialsplit = splitted2[0];

    int real_users_number = int.parse(finialsplit);

    turoo(users_number) {
      this.users_number = real_users_number;
      print(users_number);
    }

    conn.close();
    //print(s_users_number);
  }
}
