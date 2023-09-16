import 'package:flutter/material.dart';

class BoardingHouseModel extends ChangeNotifier {
  List<BoardingHouse> _boardingHouses = [];

  List<BoardingHouse> get boardingHouses => _boardingHouses;

  void addBoardingHouse(BoardingHouse house) {
    _boardingHouses.add(house);
    notifyListeners();
  }
}

class BoardingHouse {
  final String location;
  final String description;
  final String contactNumber;

  BoardingHouse({
    required this.location,
    required this.description,
    required this.contactNumber,
  });
}
