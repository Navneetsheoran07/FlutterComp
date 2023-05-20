import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../components/bottom_navigation/simple_bottomnavigation.dart';

import '../components/code_area.dart';
import '../controller/bottom_navigation.dart';

BottonNavigationController bottomNavigationController =
    Get.put(BottonNavigationController());

var bottomNavigationList = [
  CodeArea(
    code: bottomNavigationController.SimpleNavigationController,
    codeTitle: "GetX Controller",
    code1: bottomNavigationController.simpleBottonNavigation,
    codeTitle1: "Botton Navigation Code",
    child: SizedBox(
      height: 500,
      width: 300,
      child: SimpleNavigationBar(),
    ),
  ),
];
