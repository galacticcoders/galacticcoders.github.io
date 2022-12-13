// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);
    return Expanded(
      child: ListView(
        children: <Widget>[
          const SizedBox(height: 7),
          TextStyleExample(name: "Projects", style: textTheme.displayMedium!),
          TextStyleExample(
              name: "Space Explorer:", style: textTheme.titleMedium!),
          TextStyleExample(
              name:
                  "A mobile app that allows users to explore the solar system and learn about different planets and their features",
              style: textTheme.bodyMedium!),
          TextStyleExample(
              name: "Galactic Chat:", style: textTheme.titleMedium!),
          TextStyleExample(
              name:
                  "A web-based chat platform that allows users to communicate with each other in real-time",
              style: textTheme.bodyMedium!),
          TextStyleExample(
              name: "Star Tracker:", style: textTheme.titleMedium!),
          TextStyleExample(
              name:
                  "A desktop application that helps users track and monitor their favorite celestial bodies",
              style: textTheme.bodyMedium!),
        ],
      ),
    );
  }
}

class TextStyleExample extends StatelessWidget {
  const TextStyleExample({
    super.key,
    required this.name,
    required this.style,
  });

  final String name;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(name, style: style),
    );
  }
}
