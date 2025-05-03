import 'package:delivery_app/features/orders/pickeduporders/screens/picked_up.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PickedUpOrdersScreen(),
    );
  }
}