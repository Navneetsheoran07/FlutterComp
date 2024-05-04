import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../controller/sidebar_controller.dart';

SideBarController sideBarController = Get.put(SideBarController());
Drawer MyDrawer(BuildContext context) => Drawer(
      child: Obx(
        () => Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/flutter_logo.png",
                            width: Get.width * 0.20,
                          ),
                          const SizedBox(height: 15),
                          Text(
                            "FLUTTER COMP",
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 1.6,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer,
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      splashColor: Theme.of(context).colorScheme.primary,
                      leading: const Icon(Icons.house),
                      title: const Text('Home'),
                      hoverColor: Theme.of(context).colorScheme.background,
                      onTap: () => sideBarController.index.value = 0,
                      selected: sideBarController.index.value == 0,
                    ),
                    ListTile(
                      splashColor: Theme.of(context).colorScheme.primary,
                      leading: const Icon(Icons.radio_button_checked),
                      title: const Text('Button'),
                      hoverColor: Theme.of(context).colorScheme.background,
                      onTap: () => sideBarController.index.value = 1,
                      selected: sideBarController.index.value == 1,
                    ),
                    ListTile(
                      splashColor: Theme.of(context).colorScheme.primary,
                      leading: const Icon(Icons.menu),
                      title: const Text('Bottom Navigation'),
                      hoverColor: Theme.of(context).colorScheme.background,
                      onTap: () => sideBarController.index.value = 2,
                      selected: sideBarController.index.value == 2,
                    ),
                    ListTile(
                      splashColor: Theme.of(context).colorScheme.primary,
                      leading: const Icon(Icons.ballot_rounded),
                      title: const Text('App Bar'),
                      hoverColor: Theme.of(context).colorScheme.background,
                      onTap: () => sideBarController.index.value = 3,
                      selected: sideBarController.index.value == 3,
                    ),
                    // Divider(
                    //     color: Theme.of(context).colorScheme.onPrimaryContainer,
                    //     thickness: 0.2),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.safety_divider_outlined),
                    //   title: Text('Divider'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 4,
                    //   selected: sideBarController.index.value == 4,
                    // ),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.grid_view_rounded),
                    //   title: Text('Grid View'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 5,
                    //   selected: sideBarController.index.value == 5,
                    // ),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.view_agenda_rounded),
                    //   title: Text('Layout'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 6,
                    //   selected: sideBarController.index.value == 6,
                    // ),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.space_bar_rounded),
                    //   title: Text('Space'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 7,
                    //   selected: sideBarController.index.value == 7,
                    // ),
                    // Divider(
                    //     color: Theme.of(context).colorScheme.onPrimaryContainer,
                    //     thickness: 0.2),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.text_fields_outlined),
                    //   title: Text('Text Form Field'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 8,
                    //   selected: sideBarController.index.value == 8,
                    // ),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.search),
                    //   title: Text('Search Bar'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 9,
                    //   selected: sideBarController.index.value == 9,
                    // ),
                    // Divider(
                    //     color: Theme.of(context).colorScheme.onPrimaryContainer,
                    //     thickness: 0.2),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.timer),
                    //   title: Text('Time Picker'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 10,
                    //   selected: sideBarController.index.value == 10,
                    // ),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.calendar_month_sharp),
                    //   title: Text('Date Picker'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 11,
                    //   selected: sideBarController.index.value == 11,
                    // ),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.photo),
                    //   title: Text('Photo Picker'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 12,
                    //   selected: sideBarController.index.value == 12,
                    // ),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.gps_fixed_rounded),
                    //   title: Text('Location Picker'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 13,
                    //   selected: sideBarController.index.value == 13,
                    // ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      splashColor: Theme.of(context).colorScheme.primary,
                      leading: Icon(Icons.house),
                      title: Text('Home'),
                      hoverColor: Theme.of(context).colorScheme.background,
                      onTap: () => sideBarController.index.value = 0,
                      selected: sideBarController.index.value == 0,
                    ),
                    ListTile(
                      splashColor: Theme.of(context).colorScheme.primary,
                      leading: Icon(Icons.radio_button_checked),
                      title: Text('Button'),
                      hoverColor: Theme.of(context).colorScheme.background,
                      onTap: () => sideBarController.index.value = 1,
                      selected: sideBarController.index.value == 1,
                    ),
                    ListTile(
                      splashColor: Theme.of(context).colorScheme.primary,
                      leading: Icon(Icons.menu),
                      title: Text('Bottom Navigation'),
                      hoverColor: Theme.of(context).colorScheme.background,
                      onTap: () => sideBarController.index.value = 2,
                      selected: sideBarController.index.value == 2,
                    ),
                    ListTile(
                      splashColor: Theme.of(context).colorScheme.primary,
                      leading: Icon(Icons.ballot_rounded),
                      title: Text('App Bar'),
                      hoverColor: Theme.of(context).colorScheme.background,
                      onTap: () => sideBarController.index.value = 3,
                      selected: sideBarController.index.value == 3,
                    ),
                    ListTile(
                      splashColor: Theme.of(context).colorScheme.primary,
                      leading: Icon(Icons.input),
                      title: Text('Input Field'),
                      hoverColor: Theme.of(context).colorScheme.background,
                      onTap: () => sideBarController.index.value = 4,
                      selected: sideBarController.index.value == 4,
                    ),
                    ListTile(
                      splashColor: Theme.of(context).colorScheme.primary,
                      leading: Icon(Icons.input),
                      title: Text('NeumorphicSearchField'),
                      hoverColor: Theme.of(context).colorScheme.background,
                      onTap: () => sideBarController.index.value = 5,
                      selected: sideBarController.index.value == 5,
                    ),
                    // Divider(
                    //     color: Theme.of(context).colorScheme.onPrimaryContainer,
                    //     thickness: 0.2),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.safety_divider_outlined),
                    //   title: Text('Divider'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 4,
                    //   selected: sideBarController.index.value == 4,
                    // ),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.grid_view_rounded),
                    //   title: Text('Grid View'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 5,
                    //   selected: sideBarController.index.value == 5,
                    // ),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.view_agenda_rounded),
                    //   title: Text('Layout'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 6,
                    //   selected: sideBarController.index.value == 6,
                    // ),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.space_bar_rounded),
                    //   title: Text('Space'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 7,
                    //   selected: sideBarController.index.value == 7,
                    // ),
                    // Divider(
                    //     color: Theme.of(context).colorScheme.onPrimaryContainer,
                    //     thickness: 0.2),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.text_fields_outlined),
                    //   title: Text('Text Form Field'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 8,
                    //   selected: sideBarController.index.value == 8,
                    // ),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.search),
                    //   title: Text('Search Bar'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 9,
                    //   selected: sideBarController.index.value == 9,
                    // ),
                    // Divider(
                    //     color: Theme.of(context).colorScheme.onPrimaryContainer,
                    //     thickness: 0.2),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.timer),
                    //   title: Text('Time Picker'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 10,
                    //   selected: sideBarController.index.value == 10,
                    // ),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.calendar_month_sharp),
                    //   title: Text('Date Picker'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 11,
                    //   selected: sideBarController.index.value == 11,
                    // ),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.photo),
                    //   title: Text('Photo Picker'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 12,
                    //   selected: sideBarController.index.value == 12,
                    // ),
                    // ListTile(
                    //   splashColor: Theme.of(context).colorScheme.primary,
                    //   leading: Icon(Icons.gps_fixed_rounded),
                    //   title: Text('Location Picker'),
                    //   hoverColor: Theme.of(context).colorScheme.background,
                    //   onTap: () => sideBarController.index.value = 13,
                    //   selected: sideBarController.index.value == 13,
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
