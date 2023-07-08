import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meme_app/core/constants/constants.dart';
import 'package:meme_app/core/error/failure.dart';

import '../models/memes_model.dart';

abstract class MemeDataSources {
  Future<Either<Failure, List<MemesModel>>> getMemes();
}

class MemeDataSourcesImpl implements MemeDataSources {
  const MemeDataSourcesImpl({
    required this.dio,
  });
  final Dio dio;

  @override
  Future<Either<Failure, List<MemesModel>>> getMemes() async {
    final response = await dio.get(baseUrl);

    if (response.statusCode == 200) {
      return Right(
        (response.data['data']['memes'] as List<dynamic>)
            .map(
              (e) => MemesModel.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      );
    } else {
      return const Left(
        Failure(message: 'Server Failure'),
      );
    }
  }
}
