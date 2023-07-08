import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:meme_app/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group(
    'will test our app flow end to end',
    () {
      testWidgets(
        'our app should tap on meme card and go back and farword',
        (tester) async {
          app.main();

          await tester.pumpAndSettle();

          expect(find.byType(Swiper), findsOneWidget);

          Future.delayed(const Duration(seconds: 5));

          expect(find.byIcon(Icons.arrow_forward_ios), findsOneWidget);
          expect(find.byIcon(Icons.arrow_back_ios), findsOneWidget);

          await tester.tap(find.byIcon(Icons.arrow_forward_ios));
          await tester.pumpAndSettle();
          await tester.tap(find.byIcon(Icons.arrow_forward_ios));
          await tester.pumpAndSettle();
          Future.delayed(const Duration(seconds: 5));
          await tester.tap(find.byIcon(Icons.arrow_back_ios));
          await tester.pumpAndSettle();
          await tester.tap(find.byIcon(Icons.arrow_back_ios));
          await tester.pumpAndSettle();
        },
      );
    },
  );
}
