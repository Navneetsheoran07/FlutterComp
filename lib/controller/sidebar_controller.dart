import 'package:flutter_comp/view/bottom_navigation.dart';
import 'package:flutter_comp/view/button_page.dart/button_page.dart';
import 'package:flutter_comp/view/home_page/home_page_data.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SideBarController extends GetxController {
  RxInt index = 0.obs;

  var pages = [
    ViewHomePageData(),
    ViewButtonPage(),
    ViewBottomNvigation(),
  ];
}
