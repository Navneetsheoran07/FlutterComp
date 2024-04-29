import 'package:flutter/cupertino.dart';
import 'package:flutter_comp/components/bottom_navigation/NavigationView1.dart';

import '../components/bottom_navigation/NavigationView2.dart';
import '../components/bottom_navigation/simple_bottomnavigation.dart';

import '../components/code_area.dart';
import '../controller/bottom_navigation.dart';

var bottomNavigationList = [
  CodeArea(
    code: BottomNavigationCodes.SimpleNavigationController,
    codeTitle: "GetX Controller",
    code1: BottomNavigationCodes.simpleBottonNavigation,
    codeTitle1: "Botton Navigation Code",
    isBorder: true,
    child: const SizedBox(
      height: 500,
      width: 300,
      child: SimpleNavigationBar(),
    ),
  ),
  CodeArea(
    codeTitle: "Depend on",
    code: BottomNavigationCodes.NavigationView1Notes,
    codeTitle1: "Full Code",
    code1: BottomNavigationCodes.NavigationView1Code,
    isBorder: true,
    child: const SizedBox(
      height: 500,
      width: 300,
      child: NavigationView1(),
    ),
  ),
  CodeArea(
    code: BottomNavigationCodes.NavigationView2Notes,
    codeTitle: "Depend On",
    code1: BottomNavigationCodes.NavigationView2Codes,
    codeTitle1: "Full Code",
    isBorder: true,
    child: const SizedBox(
      height: 500,
      width: 300,
      child: NavigationView2(),
    ),
  ),
];
