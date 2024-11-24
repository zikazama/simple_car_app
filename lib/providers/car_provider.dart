import 'package:flutter/material.dart';
import '../dummyDatas/car_dummy_datas.dart';
import '../models/car_model.dart';

class CarProvider with ChangeNotifier {
  final List<Car> _cars = DUMMY_CAR_DATAS;

  List<Car> get cars {
    return [..._cars];
  }

  void toggleFavorite(String id) {
    final carIndex = _cars.indexWhere((car) => car.id == id);
    _cars[carIndex].isFavorite = !_cars[carIndex].isFavorite;
    notifyListeners();
  }
}
