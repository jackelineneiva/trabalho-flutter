import 'package:flutter/material.dart';
import 'package:travel_app/login.dart';

enum AppMenu {
  about,
  privacy,
  settings,
}

void main() async {
  runApp(
    const TravelersApp(),
  );
}

class TravelersApp extends StatelessWidget {
  const TravelersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
