import 'package:flutter/material.dart';
import '../models/car_model.dart';

class CarGridTile extends StatelessWidget {
  final Car car;

  // ignore: prefer_const_constructors_in_immutables
  CarGridTile(this.car, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {},
          child: Image.network(
            car.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(car.isFavorite ? Icons.favorite : Icons.favorite_border),
            color: Colors.red,
          ),
          title: Text(
            car.brand,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
