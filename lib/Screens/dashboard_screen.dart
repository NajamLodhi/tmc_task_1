import 'package:flutter/material.dart';
import 'package:tmc_task_1/Widgets/metric_card.dart';

/// Dashboard screen to display tank metrics and controls
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  // Tank metrics
  double waterTemp = 25.2;
  double pHLevel = 7.6;
  bool lightOn = false;

  /// Toggles the tank light ON/OFF
  void toggleLight(bool value) {
    if (!mounted) return;
    setState(() {
      lightOn = value;
    });
  }

  /// Simulates feeding fish by showing a snackbar
  void feedFish() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Feeding now.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Responsive sizing
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final padding = screenWidth * 0.05;
    final fontSize = screenHeight * 0.022;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tank Dashboard',
          style: TextStyle(fontSize: fontSize + 2),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: padding, vertical: 16),
          child: Column(
            children: [
              // Display temperature and pH metrics
              MetricCard(
                title: 'Water Temperature',
                value: '${waterTemp.toStringAsFixed(1)} °C',
              ),
              MetricCard(
                title: 'pH Level',
                value: pHLevel.toStringAsFixed(1),
              ),

              // Light toggle switch
              Card(
                margin: const EdgeInsets.only(bottom: 12),
                child: ListTile(
                  title: Text('Light Status',
                      style: TextStyle(fontSize: fontSize)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        lightOn ? 'ON' : 'OFF',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: fontSize,
                        ),
                      ),
                      Switch(
                        value: lightOn,
                        onChanged: toggleLight,
                      ),
                    ],
                  ),
                ),
              ),

              // Feed fish button
              const SizedBox(height: 20),
              ElevatedButton.icon(
                icon: Icon(Icons.set_meal, size: fontSize + 2),
                label: Text('Feed Fish', style: TextStyle(fontSize: fontSize)),
                onPressed: feedFish,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  minimumSize: Size(screenWidth * 0.8, screenHeight * 0.06),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
