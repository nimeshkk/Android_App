import 'package:flutter/foundation.dart';

class BoardingHouseModel with ChangeNotifier {
  List<BoardingHouse> _boardingHouses = [];

  List<BoardingHouse> get boardingHouses => _boardingHouses;

  void addBoardingHouse(BoardingHouse house) {
    _boardingHouses.add(house);
    notifyListeners();
  }

  void setBoardingHouses(List<BoardingHouse> houses) {
    _boardingHouses = houses;
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
