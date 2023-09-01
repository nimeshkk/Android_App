import 'package:flutter/foundation.dart';

class LostItemModel with ChangeNotifier {
  List<LostItem> _lostItems = [];

  List<LostItem> get lostItems => _lostItems;

  void addLostItem(LostItem item) {
    _lostItems.add(item);
    notifyListeners();
  }

  void setLostItems(List<LostItem> items) {
    _lostItems = items;
    notifyListeners();
  }
}

class LostItem {
  final String itemName;
  final String description;
  final String contactNumber;

  LostItem({
    required this.itemName,
    required this.description,
    required this.contactNumber,
  });
}
