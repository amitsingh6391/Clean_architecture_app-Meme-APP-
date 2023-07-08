import 'package:dartz/dartz.dart';
import 'package:meme_app/core/error/failure.dart';
import 'package:meme_app/data/datasources/meme_datasources.dart';
import 'package:meme_app/data/models/memes_model.dart';
import 'package:meme_app/domain/repositories/meme_repositories.dart';

class MemeRepositoriesImpl implements MemeRepositories {
  const MemeRepositoriesImpl({required this.memeDataSources});
  final MemeDataSources memeDataSources;
  @override
  Future<Either<Failure, List<MemesModel>>> getMemes() {
    return memeDataSources.getMemes();
  }
}
