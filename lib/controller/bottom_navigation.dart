import 'package:get/get.dart';

class BottomNavigationCodes {
  static String demoCode = ''' ElevatedButton(
                    onPressed: () {},
                    child: const Text("Elevated Button"),
  ),''';
  static String simpleBottonNavigation =
      ''' class SimpleNavigationBar extends StatelessWidget {
  const SimpleNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    SimpleNavigationController simpleNavigationController =
        Get.put(SimpleNavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: Theme.of(context).colorScheme.onBackground,
          unselectedItemColor: Theme.of(context).colorScheme.onSecondaryContainer,
          backgroundColor: Colors.white,
          currentIndex: simpleNavigationController.index.value,
          onTap: (index) {
            simpleNavigationController.index.value = index;
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
            BottomNavigationBarItem(icon: Icon(Icons.email), label: "Contact"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          ],
        ),
      ),
      body: Obx(
        () => simpleNavigationController
            .Pages[simpleNavigationController.index.value],
      ),
    );
  }
}
''';

  static String SimpleNavigationController =
      '''class SimpleNavigationController extends GetxController {
  RxInt index = 0.obs;

  var Pages = [
    DemoHomePage(),
    DemoAboutPage(),
    DemoContactPage(),
    DemoHomePage(),
  ];
}
''';

  static String NavigationView1Code = '''
import 'package:flutter/material.dart';
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
''';

  static String NavigationView1Notes = '''
  navigation_view: ^1.0.6
  get: ^4.6.5''';

  static String NavigationView2Notes = '''
  navigation_view: ^1.0.6
  get: ^4.6.5''';
  static String NavigationView2Codes = '''
  import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation_view/item_navigation_view.dart';
import 'package:navigation_view/navigation_view.dart';

class NavigationView2 extends StatelessWidget {
  const NavigationView2({super.key});

  @override
  Widget build(BuildContext context) {
    // Make Four page 
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
''';
}
