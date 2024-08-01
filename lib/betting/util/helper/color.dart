import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final Color secondaryColor = Color(0xFF13315C);
final Color primaryColor = Color(0xFF0B1645);

final Color whiteColor=Color(0xFFFFFFFF);



final List<Color> gradientColors = [Color(0xFF004E99), Color(0xFF003466)];

final BoxDecoration gradientDecoration = _buildGradientDecoration();

BoxDecoration _buildGradientDecoration() {
  return BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: gradientColors,
    ),
  );
}
