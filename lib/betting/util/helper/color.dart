import 'package:flutter/cupertino.dart';

final Color primaryColor = gradientColors[0];



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
