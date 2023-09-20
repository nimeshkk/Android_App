import 'package:flutter/foundation.dart';

class eventItemModel with ChangeNotifier {
  List<eventItem> _eventItems = [];

  List<eventItem> get eventItems => _eventItems;

  void addeventItem(eventItem item) {
    _eventItems.add(item);
    notifyListeners();
  }

  void seteventItems(List<eventItem> items) {
    _eventItems = items;
    notifyListeners();
  }
}

class eventItem {
  final String eventName;
  final String description;
  final String location;
  final String date;
  final String organization;

  eventItem({
    required this.eventName,
    required this.description,
    required this.location,
    required this.date,
    required this.organization,
  });
}
