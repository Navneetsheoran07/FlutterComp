import 'package:flutter/material.dart';
import 'package:flutter_comp/config/colors.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Ink(
          width: 50,
          height: 50,
          decoration: ShapeDecoration(
            color: buttonColor,
            shape: CircleBorder(
              side: BorderSide(color: buttonColor),
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
    );
  }
}
