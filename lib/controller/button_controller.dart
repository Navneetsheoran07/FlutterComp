import 'package:get/get.dart';

class ButtonController extends GetxController {
  late String code1 = '''Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
          flex: 2,
          child: MyDrawer(),
        ),
        const Expanded(
          flex: 9,
          child: ViewHomePageData(),
        ),
      ],
    ));''';
}
