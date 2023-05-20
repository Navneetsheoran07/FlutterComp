import 'package:flutter_comp/page/demo_pages/about_page.dart';
import 'package:flutter_comp/page/demo_pages/contact_page.dart';
import 'package:flutter_comp/page/demo_pages/home_page.dart';
import 'package:get/get.dart';

class SimpleNavigationController extends GetxController {
  RxInt index = 0.obs;

  var Pages = [
    DemoHomePage(),
    DemoAboutPage(),
    DemoContactPage(),
    DemoHomePage(),
  ];
}
