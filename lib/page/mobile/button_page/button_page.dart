import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';

import '../../../components/code_area.dart';
import '../../../controller/button_controller.dart';

class MobileButtonPage extends StatelessWidget {
  const MobileButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonController _buttonController = ButtonController();
    var cont = [
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
    ));
  }
}
