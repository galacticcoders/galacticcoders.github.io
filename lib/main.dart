import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const GalacticCoders());
}

class GalacticCoders extends StatelessWidget {
  const GalacticCoders({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}
