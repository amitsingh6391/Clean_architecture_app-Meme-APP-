import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meme_app/core/usecases/empty_params.dart';
import 'package:meme_app/domain/repositories/meme_repositories.dart';
import 'package:meme_app/domain/usecases/get_memes.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../mocks/migrated_mocks.dart';
import 'get_memes_test.mocks.dart';

@GenerateMocks([MemeRepositories])
void main() {
  final mockMemeRepositories = MockMemeRepositories();

  void setUpSuccessForGetMeMes() async {
    when(mockMemeRepositories.getMemes())
        .thenAnswer((realInvocation) async => Right(mockListOfMemes));
  }

  void setUpFailureForGetMeMes() async {
    when(mockMemeRepositories.getMemes())
        .thenAnswer((realInvocation) async => const Left(mockFailure));
  }

  test(
    'while calling getMemes useCases we should get List of Memes objects',
    () async {
      setUpSuccessForGetMeMes();

      GetMemes getMemes = GetMemes(memeRepositories: mockMemeRepositories);

      final result = await getMemes(NoParams());

      expect(result.fold((l) => l, (r) => r), mockListOfMemes);
    },
  );

  test(
    'while calling getMemes useCases we should get Failure',
    () async {
      setUpFailureForGetMeMes();

      GetMemes getMemes = GetMemes(memeRepositories: mockMemeRepositories);

      final result = await getMemes(NoParams());

      expect(result.fold((l) => l, (r) => r), mockFailure);
    },
  );
}
