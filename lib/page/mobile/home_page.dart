import 'package:flutter/material.dart';
import 'package:flutter_comp/components/my_drawer.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Home Page'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text('Mobile Home Page'),
      ),
    );
  }
}
