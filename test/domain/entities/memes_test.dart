import 'package:flutter_test/flutter_test.dart';

import '../../mocks/migrated_mocks.dart';

void main() {
  test('will test our memes entities fileds', () async {
    expect(mockMemesEntities.id, '1');
    expect(mockMemesEntities.name, 'MemeName');
    expect(mockMemesEntities.url, 'https://abcd.com');
    expect(mockMemesEntities.width, 123);
    expect(mockMemesEntities.height, 12);
    expect(mockMemesEntities.boxCount, 2);
  });
}
