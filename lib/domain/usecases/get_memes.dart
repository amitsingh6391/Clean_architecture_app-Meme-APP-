import 'package:dartz/dartz.dart';
import 'package:meme_app/core/error/failure.dart';
import 'package:meme_app/core/usecases/empty_params.dart';
import 'package:meme_app/core/usecases/usecases.dart';
import 'package:meme_app/domain/entities/memes.dart';
import 'package:meme_app/domain/repositories/meme_repositories.dart';

class GetMemes implements UseCases<List<Memes>, NoParams> {
  const GetMemes({
    required this.memeRepositories,
  });

  final MemeRepositories memeRepositories;
  @override
  Future<Either<Failure, List<Memes>>> call(NoParams params) {
    return memeRepositories.getMemes();
  }
}
