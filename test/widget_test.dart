// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:galacticcoders_website/main.dart';

void main() {
  testWidgets('Check if main text is there', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const GalacticCoders());

    // Verify that main text is exists.
    expect(
        find.text(
            'Hello! We are Galactic Coders, a small but mighty group of individuals who share a passion for coding, collaboration, and learning. As a team, we enjoy working on various software development projects and ideas, organizing and participating in hackathons, and playing board games together. We are always looking to expand our knowledge and share it with others, and we are excited to see what the future holds for our group.'),
        findsOneWidget);
  });
}
