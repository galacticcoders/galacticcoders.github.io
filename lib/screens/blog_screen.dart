// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);
    return Expanded(
      child: ListView(
        children: <Widget>[
          const SizedBox(height: 7),
          TextStyleExample(name: "Blog", style: textTheme.displayMedium!),
          TextStyleExample(
              name:
                  "Galactic Coders is always looking for ways to share our knowledge and expertise with the wider community. Our blog features articles and posts written by our members and guest contributors, covering a range of topics related to coding and software development. Some of the recent posts on our blog include: ",
              style: textTheme.bodyMedium!),
          TextStyleExample(
              name: "\"Top 10 coding languages to learn in 2021\"",
              style: textTheme.titleMedium!),
          TextStyleExample(
              name: "\"How to get started with machine learning\"",
              style: textTheme.titleMedium!),
          TextStyleExample(
              name: "\"5 essential tools for every software developer\"",
              style: textTheme.titleMedium!),
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
