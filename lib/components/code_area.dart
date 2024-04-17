import 'dart:js_util';

import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_comp/components/toastMessage/messageFormates/MessageFormate.dart';
import 'package:flutter_comp/config/colors.dart';
import 'package:get/get.dart';
// import 'package:highlight/highlight_core.dart' show highlight;
import 'package:highlight/languages/dart.dart';

class CodeArea extends StatelessWidget {
  final String code;
  final String? codeTitle;
  final String? codeTitle1;
  final String? codeTitle2;
  final String? code1;
  final String? code2;
  final Widget child;
  final bool isBorder;
  const CodeArea({
    super.key,
    required this.code,
    required this.child,
    this.code1 = "",
    this.code2 = "",
    this.codeTitle,
    this.codeTitle1,
    this.codeTitle2,
    this.isBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    CodeController codeController = CodeController(text: code, language: dart);
    CodeController codeController1 =
        CodeController(text: code1, language: dart);
    CodeController codeController2 =
        CodeController(text: code2, language: dart);
    RxBool isExpanded = false.obs;
    double borderRadius = 10.0;
    Offset offset = const Offset(5, 5);
    double blurRadius = 10;
    Color topShadowColor = Colors.white60;
    Color bottomShadowColor = const Color(0x26234395);
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      padding: const EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: Theme.of(context).colorScheme.primaryContainer),
      child: Column(
        children: [
          Container(
              decoration: isBorder
                  ? BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: offset,
                          blurRadius: blurRadius,
                          color: bottomShadowColor,
                        ),
                        BoxShadow(
                          offset: Offset(-offset.dx, -offset.dx),
                          blurRadius: blurRadius,
                          color: topShadowColor,
                        ),
                      ],
                    )
                  : BoxDecoration(),
              child: child),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  isExpanded.value = !isExpanded.value;
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.code,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 5),
                      Obx(
                        () => Text(
                          isExpanded.value ? "Hide Codes" : "Get Codes",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Obx(
            () => isExpanded.value
                ? Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 15),
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer,
                                borderRadius: BorderRadius.circular(100)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.amber,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  codeTitle.toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .background),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Stack(
                        children: [
                          CodeField(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.onBackground,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            controller: codeController,
                            enabled: false,
                          ),
                          Positioned(
                            top: 4,
                            right: 4,
                            child: InkWell(
                              onTap: () {
                                Clipboard.setData(ClipboardData(text: code));
                                Get.showSnackbar(successMessage("Copied"));
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).colorScheme.background,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.copy,
                                      size: 15,
                                    ),
                                    Text("Copy"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      code1 != ""
                          ? Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 15),
                                      decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimaryContainer,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.folder,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            codeTitle1.toString(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Stack(
                                  children: [
                                    CodeField(
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      controller: codeController1,
                                      enabled: false,
                                    ),
                                    Positioned(
                                      top: 4,
                                      right: 4,
                                      child: InkWell(
                                        onTap: () => {
                                          Clipboard.setData(
                                              ClipboardData(text: code1!)),
                                          successMessage("Copied")
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 3),
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .background,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Row(
                                            children: [
                                              Icon(
                                                Icons.copy,
                                                size: 15,
                                              ),
                                              Text("Copy"),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          : SizedBox(
                              height: 0,
                            ),
                      code2 != ""
                          ? Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 15),
                                      decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimaryContainer,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.folder,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            codeTitle2.toString(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .background),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Stack(
                                  children: [
                                    CodeField(
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      controller: codeController2,
                                      enabled: false,
                                    ),
                                    Positioned(
                                      top: 4,
                                      right: 4,
                                      child: InkWell(
                                        onTap: () => {
                                          Clipboard.setData(
                                              ClipboardData(text: code2!)),
                                          successMessage("Copied")
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 3),
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .background,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Row(
                                            children: [
                                              Icon(
                                                Icons.copy,
                                                size: 15,
                                              ),
                                              Text("Copy"),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          : SizedBox(
                              height: 0,
                            ),
                    ],
                  )
                : SizedBox(
                    height: 5,
                  ),
          )
        ],
      ),
    );
  }
}
