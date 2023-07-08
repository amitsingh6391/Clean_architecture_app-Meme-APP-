import 'package:dio/dio.dart';

Map<String, dynamic> mockMemesJson = {
  "id": "61516",
  "name": "Philosoraptor",
  "url": "https://i.imgflip.com/1bgs.jpg",
  "width": 500,
  "height": 500,
  "box_count": 2
};

Response mockResponse = Response(
  data: {
    "success": true,
    "data": {
      "memes": [
        {
          "id": "1",
          "name": "Meme1",
          "url": "https://abcd.com",
          "width": 123,
          "height": 12,
          "box_count": 2
        }
      ]
    }
  },
  statusCode: 200,
  requestOptions: RequestOptions(path: 'https://example.com/api'),
);

Response mockFailureResponse = Response(
  data: {"success": true, "data": {}},
  statusCode: 400,
  requestOptions: RequestOptions(path: 'https://example.com/api'),
);
