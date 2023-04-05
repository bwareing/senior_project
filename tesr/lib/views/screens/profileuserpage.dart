import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:flutter_application_1/views/screens/clander.dart';

final Uri _url = Uri.parse('https://988lifeline.org/');

////////////////////////////////////////////////////////////////////////
class Userprofilepage extends StatefulWidget {
  @override
  _Userprofilepage createState() => _Userprofilepage();
}

class _Userprofilepage extends State<Userprofilepage> {
///////////////////////////////////////////////////////////
// -launch url
////////////////////////////////////////////////////////////
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('welcome'),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 59, 77, 86),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          /////////////////////////////////////////////
          /// Drawer headear
          ////////////////////////////////////////////
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
                '“It’s hard to beat a person who never gives up.” —Babe Ruth',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
          ),
          ListTile(
            ///////////////////////////////////////
            /// Sucide hotline website
            //////////////////////////////////////
            leading: const Icon(
              Icons.link,
            ),
            title: const Text('Sucide hotline website'),
            onTap: () {
              _launchUrl();
            },
          ),
          ///////////////////////////////////////
          /// Find a Counselor
          //////////////////////////////////////
          ListTile(
            leading: const Icon(
              Icons.search,
            ),
            title: const Text('Find counselor'),
            onTap: () {},
          ),
          ///////////////////////////////////
          /// Find someone to Counsel
          //////////////////////////////////
          ListTile(
            leading: const Icon(
              Icons.search,
            ),
            title: const Text('Find people to counsel'),
            onTap: () {},
          ),
          ///////////////////////////////
          /// Set a appoiment
          ///////////////////////////////
          ListTile(
            leading: const Icon(
              Icons.calendar_month,
            ),
            title: const Text('Calendar'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => setAppoiment()));
            },
          )
        ],
      )),
      body: const Center(
          child: Column(
        children: [
          Text('Upcoming appoiments',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
        ],
      )),
    );
  }
}
