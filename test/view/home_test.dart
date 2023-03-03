import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:okan/views/home_view.dart';

void main() {
  testWidgets('Home Page', (WidgetTester tester) async {
    await tester.pumpWidget(const SetupWidget());

    expect(find.byType(TextButton), findsOneWidget);
    expect(find.text('Home Title'), findsOneWidget);
  });
}

class SetupWidget extends StatelessWidget {
  const SetupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomeView(),
    );
  }
}
