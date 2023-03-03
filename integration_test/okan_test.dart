import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:okan/main.dart' as okan;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Okan is an app', (WidgetTester tester) async {
    okan.main();

    await tester.pumpAndSettle();

    // Find the page title
    final titleText = find.text('Okan App');
    expect(titleText, findsOneWidget);

    // View Posts button should work
    final viewPostsButton = find.byType(TextButton);
    await tester.tap(viewPostsButton);
    await tester.pumpAndSettle();
    expect(find.text('Posts'), findsOneWidget);
  });
}
