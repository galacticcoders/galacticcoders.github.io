// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);
    return Expanded(
      child: ListView(
        children: <Widget>[
          const SizedBox(height: 7),
          TextStyleExample(name: "About Us", style: textTheme.displayMedium!),
          TextStyleExample(
              name:
                  "Galactic Coders is made up of a diverse team of individuals with different backgrounds and expertise. Our members have experience in a variety of programming languages and technologies, and are always eager to learn and grow. We believe in the power of collaboration and community, and strive to create a supportive and inclusive environment for our members.",
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
