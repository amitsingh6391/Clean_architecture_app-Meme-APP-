import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:meme_app/domain/usecases/get_memes.dart';
import 'package:meme_app/presentation/bloc/get_meme_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../../mocks/migrated_mocks.dart';
import 'get_meme_bloc_test.mocks.dart';

@GenerateMocks([GetMemes])
void main() {
  final mockGetMemes = MockGetMemes();

  void setUpSuccessForGetMemes() {
    when(mockGetMemes.call(any))
        .thenAnswer((realInvocation) async => Right(mockListOfMemes));
  }

  void setUpFailureForGetMemes() {
    when(mockGetMemes.call(any)).thenAnswer(
      (realInvocation) async => const Left(mockFailure),
    );
  }

  blocTest<GetMemeBloc, GetMemeState>(
    'emits [GetMemeState] when GetMeme Event is added.',
    build: () => GetMemeBloc(
      getMemes: mockGetMemes,
    ),
    act: (bloc) {
      setUpSuccessForGetMemes();
      bloc.add(const GetMemeEvent.getMemes());
    },
    expect: () => [
      const GetMemeState(loading: true),
      GetMemeState(
        loading: false,
        memes: mockListOfMemes,
      ),
    ],
  );

  blocTest<GetMemeBloc, GetMemeState>(
    'emits [GetMemeState] when GetMeme Event is added. with Failure',
    build: () => GetMemeBloc(
      getMemes: mockGetMemes,
    ),
    act: (bloc) {
      setUpFailureForGetMemes();
      bloc.add(const GetMemeEvent.getMemes());
    },
    expect: () => const [
      GetMemeState(loading: true),
      GetMemeState(
        loading: false,
        failure: mockFailure,
      ),
    ],
  );
}
