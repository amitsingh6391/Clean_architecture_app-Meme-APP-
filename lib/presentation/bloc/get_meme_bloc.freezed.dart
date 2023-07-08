// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_meme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetMemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMemes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMemes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMemes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMemes value) getMemes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMemes value)? getMemes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMemes value)? getMemes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemeEventCopyWith<$Res> {
  factory $GetMemeEventCopyWith(
          GetMemeEvent value, $Res Function(GetMemeEvent) then) =
      _$GetMemeEventCopyWithImpl<$Res, GetMemeEvent>;
}

/// @nodoc
class _$GetMemeEventCopyWithImpl<$Res, $Val extends GetMemeEvent>
    implements $GetMemeEventCopyWith<$Res> {
  _$GetMemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetMemesCopyWith<$Res> {
  factory _$$_GetMemesCopyWith(
          _$_GetMemes value, $Res Function(_$_GetMemes) then) =
      __$$_GetMemesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetMemesCopyWithImpl<$Res>
    extends _$GetMemeEventCopyWithImpl<$Res, _$_GetMemes>
    implements _$$_GetMemesCopyWith<$Res> {
  __$$_GetMemesCopyWithImpl(
      _$_GetMemes _value, $Res Function(_$_GetMemes) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetMemes with DiagnosticableTreeMixin implements _GetMemes {
  const _$_GetMemes();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetMemeEvent.getMemes()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'GetMemeEvent.getMemes'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetMemes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMemes,
  }) {
    return getMemes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMemes,
  }) {
    return getMemes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMemes,
    required TResult orElse(),
  }) {
    if (getMemes != null) {
      return getMemes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMemes value) getMemes,
  }) {
    return getMemes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMemes value)? getMemes,
  }) {
    return getMemes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMemes value)? getMemes,
    required TResult orElse(),
  }) {
    if (getMemes != null) {
      return getMemes(this);
    }
    return orElse();
  }
}

abstract class _GetMemes implements GetMemeEvent {
  const factory _GetMemes() = _$_GetMemes;
}

/// @nodoc
mixin _$GetMemeState {
  bool get loading => throw _privateConstructorUsedError;
  List<Memes>? get memes => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetMemeStateCopyWith<GetMemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMemeStateCopyWith<$Res> {
  factory $GetMemeStateCopyWith(
          GetMemeState value, $Res Function(GetMemeState) then) =
      _$GetMemeStateCopyWithImpl<$Res, GetMemeState>;
  @useResult
  $Res call({bool loading, List<Memes>? memes, Failure? failure});
}

/// @nodoc
class _$GetMemeStateCopyWithImpl<$Res, $Val extends GetMemeState>
    implements $GetMemeStateCopyWith<$Res> {
  _$GetMemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? memes = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      memes: freezed == memes
          ? _value.memes
          : memes // ignore: cast_nullable_to_non_nullable
              as List<Memes>?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMemeStateCopyWith<$Res>
    implements $GetMemeStateCopyWith<$Res> {
  factory _$$_GetMemeStateCopyWith(
          _$_GetMemeState value, $Res Function(_$_GetMemeState) then) =
      __$$_GetMemeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, List<Memes>? memes, Failure? failure});
}

/// @nodoc
class __$$_GetMemeStateCopyWithImpl<$Res>
    extends _$GetMemeStateCopyWithImpl<$Res, _$_GetMemeState>
    implements _$$_GetMemeStateCopyWith<$Res> {
  __$$_GetMemeStateCopyWithImpl(
      _$_GetMemeState _value, $Res Function(_$_GetMemeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? memes = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_GetMemeState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      memes: freezed == memes
          ? _value._memes
          : memes // ignore: cast_nullable_to_non_nullable
              as List<Memes>?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_GetMemeState with DiagnosticableTreeMixin implements _GetMemeState {
  const _$_GetMemeState(
      {required this.loading, final List<Memes>? memes, this.failure})
      : _memes = memes;

  @override
  final bool loading;
  final List<Memes>? _memes;
  @override
  List<Memes>? get memes {
    final value = _memes;
    if (value == null) return null;
    if (_memes is EqualUnmodifiableListView) return _memes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Failure? failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetMemeState(loading: $loading, memes: $memes, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetMemeState'))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('memes', memes))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMemeState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._memes, _memes) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading,
      const DeepCollectionEquality().hash(_memes), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMemeStateCopyWith<_$_GetMemeState> get copyWith =>
      __$$_GetMemeStateCopyWithImpl<_$_GetMemeState>(this, _$identity);
}

abstract class _GetMemeState implements GetMemeState {
  const factory _GetMemeState(
      {required final bool loading,
      final List<Memes>? memes,
      final Failure? failure}) = _$_GetMemeState;

  @override
  bool get loading;
  @override
  List<Memes>? get memes;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_GetMemeStateCopyWith<_$_GetMemeState> get copyWith =>
      throw _privateConstructorUsedError;
}
