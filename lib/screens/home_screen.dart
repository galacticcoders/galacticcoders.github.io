// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:galacticcoders_website/screens/about_us_screen.dart';
import 'package:galacticcoders_website/screens/blog_screen.dart';
import 'package:galacticcoders_website/screens/component_screen.dart';
import 'package:galacticcoders_website/screens/contact_us_screen.dart';
import 'package:galacticcoders_website/screens/projects_screen.dart';
import 'package:galacticcoders_website/screens/events_screen.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// NavigationRail shows if the screen width is greater or equal to
// screenWidthThreshold; otherwise, NavigationBar is used for navigation.
const double narrowScreenWidthThreshold = 450;

const Color m3BaseColor = Color(0xff6750a4);
const List<Color> colorOptions = [
  m3BaseColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];
const List<String> colorText = <String>[
  "M3 Baseline",
  "Blue",
  "Teal",
  "Green",
  "Yellow",
  "Orange",
  "Pink",
];

class _HomeScreenState extends State<HomeScreen> {
  bool useLightMode = true;
  int screenIndex = 0;

  late ThemeData themeData;

  @override
  initState() {
    super.initState();
    themeData = updateThemes(useLightMode);
  }

  ThemeData updateThemes(bool useLightMode) {
    return ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: useLightMode ? Brightness.light : Brightness.dark);
  }

  void handleScreenChanged(int selectedScreen) {
    setState(() {
      screenIndex = selectedScreen;
    });
  }

  void handleBrightnessChange() {
    setState(() {
      useLightMode = !useLightMode;
      themeData = updateThemes(useLightMode);
    });
  }

  void handleMaterialVersionChange() {
    setState(() {
      themeData = updateThemes(useLightMode);
    });
  }

  void handleColorSelect(int value) {
    setState(() {
      themeData = updateThemes(useLightMode);
    });
  }

  Widget createScreenFor(int screenIndex, bool showNavBarExample) {
    switch (screenIndex) {
      case 0:
        return const AboutUsScreen();
      case 1:
        return const ProjectsScreen();
      case 2:
        return const EventsScreen();
      case 3:
        return const BlogScreen();
      case 4:
        return const ContactUsScreen();
      default:
        return const AboutUsScreen();
    }
  }

  PreferredSizeWidget createAppBar() {
    return AppBar(
      title: const Text("Galactic Coders"),
      actions: [
        IconButton(
          icon: useLightMode
              ? const Icon(Icons.wb_sunny_outlined)
              : const Icon(Icons.wb_sunny),
          onPressed: handleBrightnessChange,
          tooltip: "Toggle brightness",
        ),
        PopupMenuButton(
          icon: const Icon(Icons.more_vert),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          itemBuilder: (context) {
            return List.generate(colorOptions.length, (index) {
              return PopupMenuItem(
                  value: index,
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          index == true
                              ? Icons.color_lens
                              : Icons.color_lens_outlined,
                          color: colorOptions[index],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(colorText[index]))
                    ],
                  ));
            });
          },
          onSelected: handleColorSelect,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material 3',
      themeMode: useLightMode ? ThemeMode.light : ThemeMode.dark,
      theme: themeData,
      home: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < narrowScreenWidthThreshold) {
          return Scaffold(
            appBar: createAppBar(),
            body: Row(children: <Widget>[
              createScreenFor(screenIndex, false),
            ]),
            bottomNavigationBar: NavigationBars(
              onSelectItem: handleScreenChanged,
              selectedIndex: screenIndex,
              isExampleBar: false,
            ),
          );
        } else {
          return Scaffold(
            appBar: createAppBar(),
            body: SafeArea(
              bottom: false,
              top: false,
              child: Row(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: NavigationRailSection(
                          onSelectItem: handleScreenChanged,
                          selectedIndex: screenIndex)),
                  const VerticalDivider(thickness: 1, width: 1),
                  createScreenFor(screenIndex, true),
                ],
              ),
            ),
          );
        }
      }),
    );
  }
}
