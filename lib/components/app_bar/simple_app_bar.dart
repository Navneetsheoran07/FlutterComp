import 'package:flutter/material.dart';

import '../../config/colors.dart';

class SimpleAppBar extends StatelessWidget {
  const SimpleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_rounded,
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
          ),
        ],
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.format_align_left_sharp,
              color: Theme.of(context).colorScheme.primaryContainer,
            )),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "A P P B A R",
          style: TextStyle(
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
        ),
      ),
      body: Center(
        child: Text("Simple App bar"),
      ),
    );
  }
}
