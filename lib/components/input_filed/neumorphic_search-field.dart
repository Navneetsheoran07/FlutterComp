import 'package:flutter/material.dart';

class NeumorphicSearchField extends StatelessWidget {
  const NeumorphicSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
      child: TextField(
        onChanged: (value) {},
        style: const TextStyle(fontSize: 16, color: Colors.white),
        textAlignVertical: TextAlignVertical.center,
        controller: TextEditingController(),
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 3),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: 'Search',
            suffixIcon: Container(
              width: 70,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(255, 210, 189, 189),
                    Color.fromARGB(255, 202, 96, 96),
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(30)),
              child: const Icon(Icons.search,
                  color: Color.fromARGB(255, 111, 109, 109)),
            ),
            hintStyle: const TextStyle(fontSize: 14, color: Colors.grey)),
      ),
    );
  }
}

class PrimaryContainer extends StatelessWidget {
  final Widget child;
  final double? radius;
  final Color? color;
  const PrimaryContainer({
    Key? key,
    this.radius,
    this.color,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 30),
        boxShadow: [
          BoxShadow(
            color: color ?? Color.fromARGB(255, 159, 158, 158),
          ),
          const BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 4,
            spreadRadius: 0,
            color: Color.fromARGB(255, 208, 208, 208),
          ),
        ],
      ),
      child: child,
    );
  }
}
