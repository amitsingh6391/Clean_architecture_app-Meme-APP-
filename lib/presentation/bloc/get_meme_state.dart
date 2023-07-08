part of 'get_meme_bloc.dart';

@freezed
class GetMemeState with _$GetMemeState {
  const factory GetMemeState({
    required bool loading,
    List<Memes>? memes,
    Failure? failure,
  }) = _GetMemeState;

  factory GetMemeState.intial({
    bool loading = false,
    List<Memes>? memes,
    Failure? failure,
  }) =>
      _GetMemeState(
        loading: loading,
        memes: memes,
        failure: failure,
      );
}
