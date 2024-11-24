import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/car_provider.dart';
import '../widgets/car_grid_tile.dart';

class CarsOverViewScreen extends StatelessWidget {
  const CarsOverViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('CarOverviewScreen Build()');
    final carProvider = Provider.of<CarProvider>(context, listen: false);
    final loadedCarDatas = carProvider.cars;

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cars"),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: loadedCarDatas.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (_, i) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CarGridTile(
                loadedCarDatas[i],
                key: ValueKey(i),
              ),
            );
          }),
    );
  }
}
