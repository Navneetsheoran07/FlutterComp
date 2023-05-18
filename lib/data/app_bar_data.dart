import 'package:flutter/material.dart';
import 'package:flutter_comp/components/app_bar/simple_app_bar.dart';
import 'package:flutter_comp/components/app_bar/tab_app_bar.dart';
import 'package:flutter_comp/components/code_area.dart';
import 'package:flutter_comp/controller/app_bar_controller.dart';
import 'package:get/get.dart';

AppBarController appBarController = Get.put(AppBarController());

var appBarList = [
  CodeArea(
    code: appBarController.simpleAppBar,
    child: SizedBox(
      height: 500,
      width: 300,
      child: SimpleAppBar(),
    ),
  ),
  CodeArea(
    code: appBarController.tabAppBar,
    child: SizedBox(
      height: 500,
      width: 300,
      child: TabAppBar(),
    ),
  ),
];
