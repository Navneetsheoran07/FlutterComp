import 'package:flutter/material.dart';
import 'package:flutter_comp/code/ToastMessageCodes.dart';
import 'package:flutter_comp/components/button/ToastMessageButton.dart';
import 'package:flutter_comp/components/button/custome_button.dart';
import 'package:flutter_comp/components/button/icon_button.dart';
import 'package:flutter_comp/components/button/notification_button.dart';
import 'package:flutter_comp/components/button/web_button.dart';
import 'package:flutter_comp/controller/button_controller.dart';

import '../components/button/badget_button.dart';
import '../components/button/elevated_button_with_icon.dart';
import '../components/button/my_elevated_button.dart';
import '../components/code_area.dart';

ButtonController _buttonController = ButtonController();

var buttonList = [
  CodeArea(
    codeTitle1: "Web Button",
    code: _buttonController.webButton,
    child: const WebButton(),
  ),
  CodeArea(
    code: _buttonController.elevatedButton,
    child: const MyElevatedButton(),
  ),
  CodeArea(
    code: _buttonController.elevatedButtonIcon,
    child: const ElevatedButtonWithIcon(),
  ),
  CodeArea(
    code: _buttonController.badgetButton,
    child: const BudgetButton(),
  ),
  CodeArea(
    code: _buttonController.notificationButton,
    child: const NotificationButton(),
  ),
  CodeArea(
    code: _buttonController.iconButton,
    child: const MyIconButton(),
  ),
  CodeArea(
    code: _buttonController.customeButton,
    child: const CustomeButton(),
  ),
  CodeArea(
    codeTitle: "Toast Message",
    code: ToastMessageCodes.ToastMessageCode,
    child: const ToastMessageButton(),
  ),
];
