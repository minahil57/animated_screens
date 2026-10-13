import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

import 'package:animated_screens/app/app.dart';
import 'package:animated_screens/core/constants/app_constants.dart';

void main() {
  tearDown(Get.reset);

  testWidgets('App pumps and shows home title', (WidgetTester tester) async {
    await tester.pumpWidget(const AnimatedScreensApp());
    await tester.pumpAndSettle();

    expect(find.text(AppConstants.homeTitle), findsOneWidget);
    expect(find.text('Sample Fade'), findsOneWidget);
  });
}
