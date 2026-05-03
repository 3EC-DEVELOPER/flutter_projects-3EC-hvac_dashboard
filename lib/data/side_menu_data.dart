import 'package:flutter/material.dart';

import '../model/menu_model.dart';

class SideMenuData {
  final menu = const <MenuModel>[
    MenuModel(icon: Icons.dashboard, title: 'Dashboard'),
    MenuModel(svgPath: 'assets/icons/Bell.svg', title: 'Alarms'),
    MenuModel(svgPath: 'assets/icons/Calendar.svg', title: 'Schedule'),
    MenuModel(icon: Icons.business, title: 'Buildings'),
    MenuModel(svgPath: 'assets/icons/FloorPlan.svg', title: 'Floor Plans'),
    MenuModel(icon: Icons.hvac, title: 'Systems'),
    MenuModel(svgPath: 'assets/icons/LightBulb.svg', title: 'Energy'),
    MenuModel(svgPath: 'assets/icons/Padlock.svg', title: 'Access Control'),
    MenuModel(icon: Icons.assessment, title: 'Reports'),
    MenuModel(icon: Icons.settings, title: 'Settings'),
    MenuModel(icon: Icons.logout, title: 'Sign Out'),
  ];
}
