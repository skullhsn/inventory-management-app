import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'inventory_home.dart'; // Your main screen

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(InventoryApp());
}

class InventoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inventory Management App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: InventoryHomePage(),
    );
  }
}
