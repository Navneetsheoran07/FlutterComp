import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';

class CouponCardExample extends StatelessWidget {
  const CouponCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CouponCard(
      firstChild: Text("Child 1"),
      secondChild: Text("Childd 2"),
    );
  }
}
