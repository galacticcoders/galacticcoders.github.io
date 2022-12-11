import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GalacticCoders')),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/spiral-galaxy-synthwave.png'),
          fit: BoxFit.cover,
        )),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white70,
            ),
            child: const Text(
              'Hello! We are Galactic Coders, a small but mighty group of individuals who share a passion for coding, collaboration, and learning. As a team, we enjoy working on various software development projects and ideas, organizing and participating in hackathons, and playing board games together. We are always looking to expand our knowledge and share it with others, and we are excited to see what the future holds for our group.  ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, shadows: [
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 2.0,
                  color: Colors.grey,
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
