import 'package:betting_app/betting/features/dashboard/components/my_app_bar.dart';
import 'package:betting_app/betting/util/helper/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child:  MyAppBar(),
      ),
      body: Container(
      ),
    );
  }
}
