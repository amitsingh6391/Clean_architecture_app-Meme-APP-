import 'dart:async';
import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:meme_app/core/error/failure.dart';

import 'package:meme_app/domain/usecases/get_memes.dart';
import 'package:meme_app/presentation/bloc/get_meme_bloc.dart';
import 'package:meme_app/presentation/pages/meme_home_page.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../../mocks/migrated_mocks.dart';
import 'meme_home_page_test.mocks.dart';

class MockGetMemeBloc extends MockBloc<GetMemeEvent, GetMemeState>
    implements GetMemeBloc {}

@GenerateMocks([GetMemes])
void main() {
  final mockGetMemes = MockGetMemes();

  final mockGetMemeBloc = MockGetMemeBloc();

  GetIt.I.registerSingleton<GetMemes>(mockGetMemes);

  setUpAll(() {
    HttpOverrides.global = null;
    when(mockGetMemes.call(any))
        .thenAnswer((realInvocation) async => Right(mockListOfMemes));
  });

  testWidgets(
    'while pumping our HomePage It should render each widgets.',
    (tester) async {
      StreamController<GetMemeState> memeStateController =
          StreamController<GetMemeState>.broadcast();

      whenListen(
        mockGetMemeBloc,
        memeStateController.stream,
        initialState: GetMemeState.intial(
          loading: true,
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: MemeAppHome(
            getMemeBloc: mockGetMemeBloc,
          ),
        ),
      );

      await tester.pump();

      expect(find.byKey(alignWidgetKey), findsOneWidget);

      expect(find.byType(CircularProgressIndicator), findsOneWidget);

      memeStateController.add(
        GetMemeState.intial(loading: false, failure: const Failure()),
      );

      await tester.pump();

      expect(find.byKey(errorTextKey), findsOneWidget);

      memeStateController.add(
        GetMemeState.intial(
          loading: false,
          memes: mockListOfMemes,
        ),
      );

      await tester.pumpAndSettle();
      expect(find.byType(Swiper), findsOneWidget);
    },
  );
}
