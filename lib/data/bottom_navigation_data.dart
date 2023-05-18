import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/button/my_elevated_button.dart';
import '../components/code_area.dart';
import '../controller/bottom_navigation.dart';

BottonNavigationController bottomNavigationController =
    Get.put(BottonNavigationController());

var bottomNavigationList = [
  CodeArea(
    code: bottomNavigationController.demoCode,
    child: MyElevatedButton(),
  ),
];
