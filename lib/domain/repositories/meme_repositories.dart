import 'package:dartz/dartz.dart';
import 'package:meme_app/core/error/failure.dart';
import 'package:meme_app/domain/entities/memes.dart';

abstract class MemeRepositories {
  Future<Either<Failure, List<Memes>>> getMemes();
}
