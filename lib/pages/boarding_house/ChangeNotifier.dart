import 'package:flutter/material.dart';
import 'package:campus_connect_app/pages/boarding_house/boarding_house_model.dart';

class BoardingHouseModel extends ChangeNotifier {
  List<BoardingHouse> _boardingHouses = [];

  List<BoardingHouse> get boardingHouses => _boardingHouses;

  void addBoardingHouse(BoardingHouse house) {
    _boardingHouses.add(house);
    notifyListeners();
  }
}
