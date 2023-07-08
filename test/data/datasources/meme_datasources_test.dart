import 'package:flutter_test/flutter_test.dart';
import 'package:meme_app/core/error/failure.dart';
import 'package:meme_app/data/datasources/meme_datasources.dart';
import 'package:mockito/annotations.dart';
import 'package:dio/dio.dart';
import 'package:mockito/mockito.dart';
import '../../mocks/json_mocks.dart';
import '../../mocks/migrated_mocks.dart';
import 'meme_datasources_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  final mockDio = MockDio();

  final memeDataSources = MemeDataSourcesImpl(dio: mockDio);

  void setUpSuccessForGetDio(Response response) {
    when(mockDio.get(any)).thenAnswer(
      (realInvocation) async => response,
    );
  }

  test(
    'while calling getMeme we should get MemeObject Response.',
    () async {
      setUpSuccessForGetDio(mockResponse);

      final res = await memeDataSources.getMemes();

      expect(res.fold((l) => l, (r) => r), mockListOfMemesModel);
    },
  );
  test(
    'while calling getMeme we would  get Failure.',
    () async {
      setUpSuccessForGetDio(mockFailureResponse);

      final res = await memeDataSources.getMemes();

      expect(
        res.fold((l) => l, (r) => r),
        const Failure(message: 'Server Failure'),
      );
    },
  );
}
