import 'package:flutter/material.dart';
import 'package:flutter_comp/data/input_field.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';

class InputFieldWeb extends StatelessWidget {
  const InputFieldWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(5),
      child: SingleChildScrollView(
        child: MasonryView(
          listOfItem: inputFieldData,
          itemBuilder: (item) => item,
          numberOfColumn: 2,
          itemPadding: 4,
          itemRadius: 10,
        ),
      ),
    ));
  }
}
