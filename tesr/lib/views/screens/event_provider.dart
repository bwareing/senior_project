import 'package:flutter_application_1/views/screens/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/views/screens/event.dart';
import 'package:provider/provider.dart';

class EventProvider extends ChangeNotifier {
  final List<Event> _events = [];

  List<Event> get events => _events;

  void addEvent(Event event) {
    _events.add(event);

    notifyListeners();
  }
}
