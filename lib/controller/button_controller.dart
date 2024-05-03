import 'package:get/get.dart';

class ButtonController extends GetxController {
  late String webButton = '''
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WebButton extends StatefulWidget {
  const WebButton({super.key});

  @override
  State<WebButton> createState() => _WebButtonState();
}

class _WebButtonState extends State<WebButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: 200.milliseconds,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.forward().then((value) {
          _controller.reverse();
        });
      },
      behavior: HitTestBehavior.opaque,
      child: ScaleTransition(
        scale: Tween<double>(begin: 1, end: 0.95).animate(_controller),
        child: Container(
          width: Get.width * 0.35,
          height: Get.height * 0.058,
          padding: const EdgeInsets.all(04),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0,
              ),
            ],
          ),
          child: Row(
            children: [
              SizedBox(width: Get.width * 0.01), // 10
              const Icon(
                Icons.settings_outlined,
                color: Colors.green,
              ),
              SizedBox(width: Get.width * 0.01), // 10
              Expanded(
                child: Container(
                  height: Get.height,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(22),
                      bottomRight: Radius.circular(22),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "SETTING",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 17,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
''';
  late String elevatedButton = ''' ElevatedButton(
                    onPressed: () {},
                    child: const Text("Elevated Button"),
  ),''';

  late String elevatedButtonIcon = ''' ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    label: const Text("Elevated Button Icon"),
  ),''';
  late String badgetButton = '''Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Badge(
              label: Text("02"),
              backgroundColor: Colors.deepPurple,
              largeSize: 20,
              textStyle: TextStyle(fontSize: 15),
              child: IconButton(
                color: Colors.blue,
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 50,
                ),
              ),
            ),
            Badge(
              label: Text("02"),
              backgroundColor: Colors.deepPurple,
              largeSize: 20,
              textStyle: TextStyle(fontSize: 15),
              child: ElevatedButton(
                child: Text("My Button"),
                onPressed: () {},
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Badge(
              label: Text("02"),
              alignment: AlignmentDirectional.topEnd,
              backgroundColor: Colors.deepPurple,
              largeSize: 15,
              textStyle: TextStyle(fontSize: 15),
              child: CircleAvatar(
                child: Icon(Icons.person),
              ),
            ),
            Badge(
                label: Text("02"),
                backgroundColor: Colors.deepPurple,
                largeSize: 20,
                textStyle: TextStyle(fontSize: 15),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [Icon(Icons.add), Text("Add New Button")],
                    ),
                  ),
                )),
          ],
        ),
      ],
    ),''';

  late String notificationButton = ''''Stack(
      clipBehavior: Clip.none,
      children: [
        Ink(
          width: 50,
          height: 50,
          decoration: ShapeDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            shape: CircleBorder(
              side: BorderSide(color: Theme.of(context).colorScheme.primaryContainer),
            ),
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            splashRadius: 12 / 2,
            iconSize: 25,
            icon: Icon(Icons.trending_neutral, color: Colors.white),
            onPressed: () {},
          ),
        ),
        Positioned(
          top: -7,
          right: -7,
          child: Container(
            width: 20,
            height: 20,
            decoration: const ShapeDecoration(
              color: Colors.red,
              shape: const CircleBorder(),
            ),
            child: Center(
              child: Text(
                "12",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );''';

  late String customeButton = '''InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(Icons.home),
            SizedBox(width: 5),
            Text("Home Button"),
          ],
        ),
      ),
    );''';
  late String iconButton = '''IconButton(
      onPressed: () {},
      icon: Icon(Icons.info),
    );''';
}
