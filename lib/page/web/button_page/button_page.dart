import 'package:flutter/material.dart';
import 'package:flutter_comp/data/button_data.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';

class WebButtonPage extends StatelessWidget {
  const WebButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(5),
      child: SingleChildScrollView(
        child: MasonryView(
          listOfItem: buttonList,
          itemBuilder: (item) => item,
          numberOfColumn: 2,
          itemPadding: 4,
          itemRadius: 10,
        ),
      ),
    ));
  }
}
