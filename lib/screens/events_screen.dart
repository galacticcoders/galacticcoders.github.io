// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);
    return Expanded(
      child: ListView(
        children: <Widget>[
          const SizedBox(height: 7),
          TextStyleExample(name: "Events", style: textTheme.displayMedium!),
          TextStyleExample(
              name:
                  "Galactic Coders is actively involved in the coding and software development community, and we regularly organize and participate in events such as hackathons, workshops, and meetups. Some of the events that we have been involved in include: ",
              style: textTheme.bodyMedium!),
          TextStyleExample(name: "Code-A-Thon:", style: textTheme.titleMedium!),
          TextStyleExample(
              name:
                  "A 24-hour hackathon where teams of coders compete to build the best software projects ",
              style: textTheme.bodyMedium!),
          TextStyleExample(
              name: "Coding Bootcamp:", style: textTheme.titleMedium!),
          TextStyleExample(
              name:
                  "A week-long intensive workshop that teaches participants the fundamentals of coding and software development ",
              style: textTheme.bodyMedium!),
          TextStyleExample(
              name: "Meet and Code:", style: textTheme.titleMedium!),
          TextStyleExample(
              name:
                  "A monthly meetup where members can network and share ideas with other coders and tech enthusiasts ",
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
