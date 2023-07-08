import 'package:meme_app/core/error/failure.dart';
import 'package:meme_app/data/models/memes_model.dart';
import 'package:meme_app/domain/entities/memes.dart';

final mockListOfMemes = [
  const Memes(
    id: '1',
    name: 'Meme1',
    url: 'https://abcd.com',
    width: 123,
    height: 12,
    boxCount: 2,
  )
];

final mockListOfMemesModel = [
  const MemesModel(
    id: '1',
    name: 'Meme1',
    url: 'https://abcd.com',
    width: 123,
    height: 12,
    boxCount: 2,
  )
];

const mockFailure = Failure(message: 'Server Failure');

const mockMemesEntities = Memes(
  id: '1',
  name: 'MemeName',
  url: 'https://abcd.com',
  width: 123,
  height: 12,
  boxCount: 2,
);
