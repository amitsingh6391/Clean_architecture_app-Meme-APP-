import 'package:flutter_test/flutter_test.dart';
import 'package:meme_app/data/models/memes_model.dart';

import '../../mocks/json_mocks.dart';

void main() {
  test(
    'should return json from MemesModelFromJson',
    () async {
      MemesModel memesModel = MemesModel.fromJson(mockMemesJson);

      expect(memesModel.id, '61516');
      expect(memesModel.name, 'Philosoraptor');
      expect(memesModel.url, 'https://i.imgflip.com/1bgs.jpg');
      expect(memesModel.width, 500);
      expect(memesModel.height, 500);
      expect(memesModel.boxCount, 2);
    },
  );
  test(
    'should return Create Json  from MemesModelToJson',
    () async {
      MemesModel memesModel = MemesModel.fromJson(mockMemesJson);

      Map<String, dynamic> resultJson = memesModel.toJson();

      expect(mockMemesJson['id'], resultJson['id']);
      expect(mockMemesJson['name'], resultJson['name']);
      expect(mockMemesJson['url'], resultJson['url']);
      expect(mockMemesJson['width'], resultJson['width']);
      expect(mockMemesJson['height'], resultJson['height']);
      expect(mockMemesJson['box_count'], resultJson['box_count']);
    },
  );
}
