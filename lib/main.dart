import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'betting/util/helper/color.dart';
import 'betting/util/routes/route.dart';

//Region GlobalVariables
// BaseLanguage language = LanguagesEn();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Betting',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.home,
      getPages: AppRoutes.pages, // Use the routes from the AppRoutes class
    );
  }
}
