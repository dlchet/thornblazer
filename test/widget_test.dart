// This is an example Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
//
// Visit https://flutter.dev/docs/cookbook/testing/widget/introduction for
// more information about Widget testing.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:thornblazer/src/sample_feature/sample_item_list_view.dart';

void main() {
  group('MyWidget', () {
    testWidgets('should display a string of text', (WidgetTester tester) async {
      // Define a Widget
      Widget testHarnessWidget = const MaterialApp(home: SampleItemListView());

      // Build myWidget and trigger a frame.
      await tester.pumpWidget(testHarnessWidget);

      // Verify myWidget shows some text
      // find.byType(Text).evaluate().forEach((e) => debugPrint(e.toString()));
      expect(find.byType(Text), findsNWidgets(4)); // 3 list items and 1 title
    });
  });
}
