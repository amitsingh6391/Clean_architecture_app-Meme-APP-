import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meme_app/domain/entities/memes.dart';

part 'memes_model.freezed.dart';
part 'memes_model.g.dart';

@freezed
class MemesModel extends Memes with _$MemesModel {
  const factory MemesModel({
    required String id,
    required String name,
    required String url,
    required int width,
    required int height,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'box_count') int? boxCount,
  }) = _MemesModel;

  factory MemesModel.fromJson(Map<String, dynamic> json) =>
      _$MemesModelFromJson(json);
}
