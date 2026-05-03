import 'package:flutter/material.dart';

class MenuModel {
  final IconData? icon;
  final String? svgPath;
  final String title;

  const MenuModel({this.icon, this.svgPath, required this.title})
      : assert(icon != null || svgPath != null,
            'MenuModel requires either icon or svgPath');
}
