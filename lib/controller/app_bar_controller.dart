import 'package:get/get.dart';

class AppBarController extends GetxController {
  late String simpleAppBar = '''Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: whiteColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_rounded,
              color: whiteColor,
            ),
          ),
        ],
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.format_align_left_sharp,
              color: whiteColor,
            )),
        backgroundColor: blueColor,
        title: Text(
          "A P P B A R",
          style: TextStyle(
            color: whiteColor,
          ),
        ),
      ),
      body: Center(
        child: Text("App bar"),
      ),
    );''';

  late String tabAppBar = '''class TabAppBar extends StatefulWidget {
  const TabAppBar({super.key});

  @override
  State<TabAppBar> createState() => _TabAppBarState();
}

class _TabAppBarState extends State<TabAppBar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: buttonColor,
          title: Text("TAB APP BAR"),
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorColor: whiteColor,
            dividerColor: bgColor,
            controller: tabController,
            tabs: const [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "About",
              ),
              Tab(
                icon: Icon(Icons.email),
                text: "Contact",
              ),
              Tab(
                icon: Icon(Icons.more),
                text: "More",
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            DemoHomePage(),
            DemoAboutPage(),
            DemoContactPage(),
            DemoHomePage(),
          ],
        ));
  }
}''';
}
