// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);
    return Expanded(
      child: ListView(
        children: <Widget>[
          const SizedBox(height: 7),
          TextStyleExample(name: "Contact Us", style: textTheme.displayMedium!),
          TextStyleExample(
              name:
                  "Want to get in touch with Galactic Coders? We would love to hear from you! You can contact us through our website's contact form, or email us at [email protected] You can also follow us on social media to stay up-to-date with our latest projects and events. If you are interested in joining our group or collaborating with us on a project, please don't hesitate to reach out! ",
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
