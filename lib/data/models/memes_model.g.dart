// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemesModel _$$_MemesModelFromJson(Map<String, dynamic> json) =>
    _$_MemesModel(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      boxCount: json['box_count'] as int?,
    );

Map<String, dynamic> _$$_MemesModelToJson(_$_MemesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'box_count': instance.boxCount,
    };
