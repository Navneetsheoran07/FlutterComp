import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  const CodeArea(
      {super.key,
      required this.code,
      required this.child,
      this.code1 = "",
      this.code2 = "",
      this.codeTitle,
      this.codeTitle1,
      this.codeTitle2});

  @override
  Widget build(BuildContext context) {
    CodeController codeController = CodeController(text: code, language: dart);
    CodeController codeController1 =
        CodeController(text: code1, language: dart);
    CodeController codeController2 =
        CodeController(text: code2, language: dart);
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(color: divColor),
      child: Column(
        children: [
          child,
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                decoration: BoxDecoration(
                    color: whiteColor,
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
                          .titleMedium
                          ?.copyWith(color: titleColor),
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
                  color: titleColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                controller: codeController,
                enabled: false,
              ),
              Positioned(
                top: 4,
                right: 4,
                child: InkWell(
                  onTap: () => {
                    Clipboard.setData(ClipboardData(text: code)),
                    Get.showSnackbar(const GetSnackBar(
                      message: "Copied to clipboard",
                    )),
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    decoration: BoxDecoration(
                      color: bgColor,
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
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(100)),
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
                                    .titleMedium
                                    ?.copyWith(color: titleColor),
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
                            color: titleColor,
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
                              Clipboard.setData(ClipboardData(text: code1!)),
                              Get.showSnackbar(const GetSnackBar(
                                message: "Copied to clipboard",
                              )),
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 3),
                              decoration: BoxDecoration(
                                color: bgColor,
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
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(100)),
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
                                    .titleMedium
                                    ?.copyWith(color: titleColor),
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
                            color: titleColor,
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
                              Clipboard.setData(ClipboardData(text: code2!)),
                              Get.showSnackbar(const GetSnackBar(
                                message: "Copied to clipboard",
                              )),
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 3),
                              decoration: BoxDecoration(
                                color: bgColor,
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
                  ],
                )
              : SizedBox(
                  height: 0,
                ),
        ],
      ),
    );
  }
}
