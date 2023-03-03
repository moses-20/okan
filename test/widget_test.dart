import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:okan/main.dart';

void main() {
  testWidgets('Material App', (WidgetTester tester) async {
    expect(find.byKey(const Key('material_app')), findsNothing);

    await tester.pumpWidget(const Okan());

    expect(find.byKey(const Key('material_app')), findsOneWidget);
  });
}
