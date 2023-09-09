import 'package:campus_connect_app/pages/upcoming_events/EVENT/event_item_model.dart';
import 'package:flutter/material.dart';

class eventItemModel extends ChangeNotifier {
  List<eventItem> _eventItems = [];

  List<eventItem> get eventItems => _eventItems;

  void addeventItem(eventItem item) {
    _eventItems.add(item);
    notifyListeners();
  }
}
