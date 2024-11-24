import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/car_provider.dart';
import './screens/cars_overview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CarProvider())],
      child: const MaterialApp(
        title: 'My Cars',
        home: CarsOverViewScreen(),
      ),
    );
  }
}
