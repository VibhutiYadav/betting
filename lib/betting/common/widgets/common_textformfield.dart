import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonTextFormField extends StatelessWidget {
  String hintName;
  // String prefixIcon;
  TextInputType keyboardTypes;
  Color fillColor;
  bool obscured;
  TextEditingController controller;
  final FormFieldValidator? validator;

  Widget? sufix;

  CommonTextFormField(
      {required this.hintName,
      required this.keyboardTypes,
      required this.obscured,
      this.sufix,
      required this.controller,
      this.validator,
      required this.fillColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: obscured,
        textInputAction: TextInputAction.done,
        keyboardType: keyboardTypes,
        inputFormatters: [LengthLimitingTextInputFormatter(20)],
        style: TextStyle(color: Colors.grey, ),
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          suffixIcon: sufix,
          hintText: hintName,
          hintStyle: GoogleFonts.poppins(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          border: InputBorder.none,
          disabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
