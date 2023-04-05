import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/screens/event_provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter_application_1/views/screens/set_appimoent_logic.dart';
import 'package:flutter_application_1/views/screens/appoimentlogic_2.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_application_1/views/screens/event_editing_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/views/screens/event_data_source.dart';

class setAppoiment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final events = Provider.of<EventProvider>(context).events;
    return Scaffold(
      body: SfCalendar(
        view: CalendarView.month,
        dataSource: EventDataSource(events),
        initialSelectedDate: DateTime.now(),
        cellBorderColor: Colors.transparent,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white10),
        backgroundColor: Colors.red,
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => EventEditingPage()),
        ),
      ),
    );
  }
}
