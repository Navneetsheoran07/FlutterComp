import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';
import 'package:get/get.dart';

import '../../../../components/code_area.dart';
import '../../../../controller/button_controller.dart';

class MobileHomePageData extends StatelessWidget {
  const MobileHomePageData({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonController _buttonController = Get.put(ButtonController());
    var cont = [
      CodeArea(code: _buttonController.code1),
      CodeArea(code: _buttonController.code1),
      CodeArea(code: _buttonController.code1),
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: MasonryView(
          listOfItem: cont,
          itemBuilder: (item) => item,
          numberOfColumn: 1,
          itemPadding: 4,
          itemRadius: 10,
        ),
      ),
    );
  }
}
