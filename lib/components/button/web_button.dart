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
