import 'package:flutter/material.dart';
import 'package:flutter_comp/page/demo_pages/about_page.dart';
import 'package:flutter_comp/page/demo_pages/contact_page.dart';
import 'package:flutter_comp/page/demo_pages/home_page.dart';
import 'package:flutter_comp/page/demo_pages/privacy_page.dart';
import 'package:get/get.dart';
import 'package:navigation_view/item_navigation_view.dart';
import 'package:navigation_view/navigation_view.dart';

class NavigationView2 extends StatelessWidget {
  const NavigationView2({super.key});

  @override
  Widget build(BuildContext context) {
    var pages = [
      const DemoHomePage(),
      const DemoAboutPage(),
      const DemoContactPage(),
      const DemoPrivacyPage(),
    ];
    RxInt currentIndex = 0.obs;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("NAVIGATION VIEW 1"),
      ),
      bottomNavigationBar: NavigationView(
        items: [
          ItemNavigationView(
            childAfter: const Icon(
              Icons.home_rounded,
              color: Colors.blue,
              size: 30,
            ),
            childBefore: Text(
              "Home",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          ItemNavigationView(
            childAfter: const Icon(
              Icons.widgets_rounded,
              color: Colors.red,
              size: 30,
            ),
            childBefore: Text(
              "About",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          ItemNavigationView(
            childAfter: const Icon(
              Icons.wifi,
              color: Colors.amber,
              size: 30,
            ),
            childBefore: Text(
              "Contact",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          ItemNavigationView(
            childAfter: const Icon(
              Icons.accessible,
              color: Colors.green,
              size: 30,
            ),
            childBefore: Text(
              "Privacy",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
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
