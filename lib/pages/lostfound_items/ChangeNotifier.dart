import 'package:flutter/material.dart';
import 'package:campus_connect_app/pages/lostfound_items/lost_item_model.dart';

class LostItemModel extends ChangeNotifier {
  List<LostItem> _lostItems = [];

  List<LostItem> get lostItems => _lostItems;

  void addLostItem(LostItem item) {
    _lostItems.add(item);
    notifyListeners();
  }
}
