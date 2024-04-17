import 'package:flutter/material.dart';

import '../../config/colors.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: Theme.of(context).colorScheme.primaryContainer,
        hintStyle: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
          fontSize: 15,
        ),
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 5),
              decoration:  BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Icon(
                Icons.search,
                color: Theme.of(context).colorScheme.primaryContainer,
              )),
        ),
      ),
    );
    ;
  }
}
