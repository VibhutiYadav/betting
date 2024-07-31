import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// final Color primaryColor = gradientColors[0];
final Color secondaryColor = Color(0xFF13315C).withOpacity(0.9);
// final Color primaryColor = Color(0xFF0B1645);
// final Color secondaryColor = Color(0xFF8C9EFF);
final Color primaryColor = Color(0xFF13315C);

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
