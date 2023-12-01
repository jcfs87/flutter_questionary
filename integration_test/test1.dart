import 'package:adv_basic/quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:adv_basic/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Tap on the start quiz', (tester) async {
    app.main();

    //trigger a frame or pump the start screen
    await tester.pumpAndSettle();
    //verify that we start on the start screen
    expect(find.text('Learn flutter the fun way!'), findsOneWidget);

    //find the outline button "start quiz"
    await tester.tap(find.byKey(const Key('tapStartQuiz')));
    await tester.pumpAndSettle();
    expect(find.text('Qustion 1'), findsOneWidget);

  });
}