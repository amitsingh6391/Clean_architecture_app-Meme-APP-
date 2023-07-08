// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemesModel _$MemesModelFromJson(Map<String, dynamic> json) {
  return _MemesModel.fromJson(json);
}

/// @nodoc
mixin _$MemesModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'box_count')
  int? get boxCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemesModelCopyWith<MemesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemesModelCopyWith<$Res> {
  factory $MemesModelCopyWith(
          MemesModel value, $Res Function(MemesModel) then) =
      _$MemesModelCopyWithImpl<$Res, MemesModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String url,
      int width,
      int height,
      @JsonKey(name: 'box_count') int? boxCount});
}

/// @nodoc
class _$MemesModelCopyWithImpl<$Res, $Val extends MemesModel>
    implements $MemesModelCopyWith<$Res> {
  _$MemesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? width = null,
    Object? height = null,
    Object? boxCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      boxCount: freezed == boxCount
          ? _value.boxCount
          : boxCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemesModelCopyWith<$Res>
    implements $MemesModelCopyWith<$Res> {
  factory _$$_MemesModelCopyWith(
          _$_MemesModel value, $Res Function(_$_MemesModel) then) =
      __$$_MemesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String url,
      int width,
      int height,
      @JsonKey(name: 'box_count') int? boxCount});
}

/// @nodoc
class __$$_MemesModelCopyWithImpl<$Res>
    extends _$MemesModelCopyWithImpl<$Res, _$_MemesModel>
    implements _$$_MemesModelCopyWith<$Res> {
  __$$_MemesModelCopyWithImpl(
      _$_MemesModel _value, $Res Function(_$_MemesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? width = null,
    Object? height = null,
    Object? boxCount = freezed,
  }) {
    return _then(_$_MemesModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      boxCount: freezed == boxCount
          ? _value.boxCount
          : boxCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemesModel implements _MemesModel {
  const _$_MemesModel(
      {required this.id,
      required this.name,
      required this.url,
      required this.width,
      required this.height,
      @JsonKey(name: 'box_count') this.boxCount});

  factory _$_MemesModel.fromJson(Map<String, dynamic> json) =>
      _$$_MemesModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String url;
  @override
  final int width;
  @override
  final int height;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'box_count')
  final int? boxCount;

  @override
  String toString() {
    return 'MemesModel(id: $id, name: $name, url: $url, width: $width, height: $height, boxCount: $boxCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.boxCount, boxCount) ||
                other.boxCount == boxCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, url, width, height, boxCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemesModelCopyWith<_$_MemesModel> get copyWith =>
      __$$_MemesModelCopyWithImpl<_$_MemesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemesModelToJson(
      this,
    );
  }
}

abstract class _MemesModel implements MemesModel {
  const factory _MemesModel(
      {required final String id,
      required final String name,
      required final String url,
      required final int width,
      required final int height,
      @JsonKey(name: 'box_count') final int? boxCount}) = _$_MemesModel;

  factory _MemesModel.fromJson(Map<String, dynamic> json) =
      _$_MemesModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get url;
  @override
  int get width;
  @override
  int get height;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'box_count')
  int? get boxCount;
  @override
  @JsonKey(ignore: true)
  _$$_MemesModelCopyWith<_$_MemesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
