import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_10a/main.dart';
void main() {
  testWidgets('CustomButton displays and triggers onPressed',
      (WidgetTester tester) async {
    // Define a flag to check if the button is pressed.
    bool isPressed = false;
    // Build the widget tree with the CustomButton.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomButton(
            label: 'Designed Button',
            onPressed: () {
              isPressed = true;
              print('Button was pressed!');
            },
          ),
        ),
      ),
    );
    // Verify that the button is displayed with the correct label.
    expect(find.text('Designed Button'), findsOneWidget);
    // Tap the button and trigger a frame.
    await tester.tap(find.text('Designed Button'));
    await tester.pump();
    // Verify that the onPressed callback is triggered.
    expect(isPressed, isTrue);
    // Print output after test
    print('Test completed. isPressed: $isPressed');
  });
}