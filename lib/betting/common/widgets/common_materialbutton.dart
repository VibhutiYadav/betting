import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CommonMaterialButton extends StatelessWidget {
  String text;
  Color color;
  Color textcolor;
  Function()? ontap;
  CommonMaterialButton({
    required this.text, required this.color, required this.textcolor, required this.ontap
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      shape: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(8),
      ),
      onPressed:ontap,
      height: 50,
      minWidth: double.infinity,
      child:
      Text(text,
          textScaler: TextScaler.linear(1.0),
          style: GoogleFonts.poppins(fontSize: 14,
            fontWeight: FontWeight.w700,
            color: textcolor,
          )
      ),
    );
  }
}