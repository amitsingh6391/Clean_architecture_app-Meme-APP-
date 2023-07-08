import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meme_app/presentation/widgets/meme_card.dart';

import '../../mocks/migrated_mocks.dart';

void main() {
  setUpAll(() {
    HttpOverrides.global = null;
  });
  testWidgets(
    'Should render our meme Card properly',
    (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MemeCard(
            meme: mockListOfMemes.first,
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byKey(memeImageKey), findsOneWidget);
      expect(find.byKey(memeNameKey), findsOneWidget);
    },
  );
}
