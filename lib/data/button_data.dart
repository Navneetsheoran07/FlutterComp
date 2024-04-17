import 'package:flutter/material.dart';
import 'package:flutter_comp/code/ToastMessageCodes.dart';
import 'package:flutter_comp/components/button/ToastMessageButton.dart';
import 'package:flutter_comp/components/button/custome_button.dart';
import 'package:flutter_comp/components/button/icon_button.dart';
import 'package:flutter_comp/components/button/notification_button.dart';
import 'package:flutter_comp/controller/button_controller.dart';

import '../components/button/badget_button.dart';
import '../components/button/elevated_button_with_icon.dart';
import '../components/button/my_elevated_button.dart';
import '../components/code_area.dart';

ButtonController _buttonController = ButtonController();

var buttonList = [
  CodeArea(
    code: _buttonController.elevatedButton,
    child: MyElevatedButton(),
  ),
  CodeArea(
    code: _buttonController.elevatedButtonIcon,
    child: ElevatedButtonWithIcon(),
  ),
  CodeArea(
    code: _buttonController.badgetButton,
    child: BudgetButton(),
  ),
  CodeArea(
    code: _buttonController.notificationButton,
    child: NotificationButton(),
  ),
  CodeArea(
    code: _buttonController.iconButton,
    child: MyIconButton(),
  ),
  CodeArea(
    code: _buttonController.customeButton,
    child: CustomeButton(),
  ),
  CodeArea(
    codeTitle: "Toast Message",
    code: ToastMessageCodes.ToastMessageCode,
    child: ToastMessageButton(),
  ),
];
