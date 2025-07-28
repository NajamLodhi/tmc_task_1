import 'package:flutter/material.dart';
import 'package:tmc_task_1/Screens/dashboard_screen.dart';

/// Entry point of the application
void main() => runApp(const MarineTankApp());

/// Root widget of the app
class MarineTankApp extends StatelessWidget {
  const MarineTankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Marine Tank Monitor',
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}
