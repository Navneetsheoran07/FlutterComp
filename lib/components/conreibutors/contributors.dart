import 'package:flutter/material.dart';
import 'package:flutter_comp/config/colors.dart';

class Contributors extends StatelessWidget {
  const Contributors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/images/nitish.png"),
              fit: BoxFit.cover,
            ),
            // color: grayColor,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nitish kumar", style: Theme.of(context).textTheme.titleSmall),
          ],
        ),
      ],
    );
  }
}
