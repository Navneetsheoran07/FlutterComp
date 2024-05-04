import 'package:flutter/material.dart';
import 'package:flutter_comp/data/neumorphic_search_field.dart';

import 'package:flutter_masonry_view/flutter_masonry_view.dart';

class NeumorphicSearchFieldWeb extends StatelessWidget {
  const NeumorphicSearchFieldWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(5),
      child: SingleChildScrollView(
        child: MasonryView(
          listOfItem: neumorphicsearchFieldData,
          itemBuilder: (item) => item,
          numberOfColumn: 2,
          itemPadding: 4,
          itemRadius: 10,
        ),
      ),
    ));
  }
}
