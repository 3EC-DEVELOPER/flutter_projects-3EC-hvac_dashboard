import 'package:flutter/material.dart';

import 'const/constant.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const HvacDashboardApp());
}

class HvacDashboardApp extends StatelessWidget {
  const HvacDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3EC BMS Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        brightness: Brightness.dark,
      ),
      home: const MainScreen(),
    );
  }
}
