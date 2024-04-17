import 'package:flutter/material.dart';
import 'package:flutter_comp/page/demo_pages/about_page.dart';
import 'package:flutter_comp/page/demo_pages/contact_page.dart';
import 'package:flutter_comp/page/demo_pages/home_page.dart';
import 'package:flutter_comp/page/demo_pages/privacy_page.dart';
import 'package:get/get.dart';
import 'package:navigation_view/item_navigation_view.dart';
import 'package:navigation_view/navigation_view.dart';

class NavigationView1 extends StatelessWidget {
  const NavigationView1({super.key});

  @override
  Widget build(BuildContext context) {
    var pages = [
      DemoHomePage(),
      DemoAboutPage(),
      DemoContactPage(),
      DemoPrivacyPage(),
    ];
    RxInt currentIndex = 0.obs;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("NAVIGATION VIEW 1"),
      ),
      bottomNavigationBar: NavigationView(
        items: [
          ItemNavigationView(
              childAfter: const Icon(
                Icons.home_rounded,
                color: Colors.blue,
                size: 30,
              ),
              childBefore: Icon(
                Icons.home_outlined,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                size: 30,
              )),
          ItemNavigationView(
              childAfter: const Icon(
                Icons.widgets_rounded,
                color: Colors.red,
                size: 30,
              ),
              childBefore: Icon(
                Icons.now_widgets_outlined,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                size: 30,
              )),
          ItemNavigationView(
              childAfter: const Icon(
                Icons.wifi,
                color: Colors.amber,
                size: 30,
              ),
              childBefore: Icon(
                Icons.wifi_lock,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                size: 30,
              )),
          ItemNavigationView(
              childAfter: const Icon(
                Icons.accessible,
                color: Colors.green,
                size: 30,
              ),
              childBefore: Icon(
                Icons.not_accessible,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                size: 30,
              )),
        ],
        onChangePage: (index) {
          print(index);
          currentIndex.value = index;
        },
      ),
      body: Obx(
        () => pages[currentIndex.value],
      ),
    );
  }
}
