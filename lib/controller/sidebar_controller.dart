import 'package:flutter_comp/view/app_bar.dart';
import 'package:flutter_comp/view/bottom_navigation.dart';
import 'package:flutter_comp/view/button_page.dart/button_page.dart';
import 'package:flutter_comp/view/home_page/home_page_data.dart';
import 'package:flutter_comp/view/input_field/Input_field.dart';
import 'package:flutter_comp/view/input_field/neumorphics_search_filed.dart';
import 'package:get/get.dart';

class SideBarController extends GetxController {
  RxInt index = 2.obs;

  var pages = [
    ViewHomePageData(),
    ViewButtonPage(),
    ViewBottomNvigation(),
    ViewAppBar(),
    InputFieldView(),
    NeumorphicSearchFieldView()
  ];
}
