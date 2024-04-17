import 'package:flutter/material.dart';
import 'package:flutter_comp/config/my_themes.dart';
import 'package:flutter_comp/view/home_page/home_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Comp',
      builder: FToastBuilder(),
      theme: lightTheme,
      home: ViewHomePage(),
    );
  }
}
