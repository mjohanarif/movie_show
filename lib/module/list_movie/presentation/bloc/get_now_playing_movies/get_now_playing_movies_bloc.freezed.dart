// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_now_playing_movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetNowPlayingMoviesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int page) getNowPlayingMovies,
    required TResult Function(int id) filterNowPlayingMovies,
    required TResult Function() unfilterNowPlayingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int page)? getNowPlayingMovies,
    TResult? Function(int id)? filterNowPlayingMovies,
    TResult? Function()? unfilterNowPlayingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page)? getNowPlayingMovies,
    TResult Function(int id)? filterNowPlayingMovies,
    TResult Function()? unfilterNowPlayingMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetNowPlayingMovies value) getNowPlayingMovies,
    required TResult Function(_FilterNowPlayingMovies value)
        filterNowPlayingMovies,
    required TResult Function(_UnfilterNowPlayingMovies value)
        unfilterNowPlayingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetNowPlayingMovies value)? getNowPlayingMovies,
    TResult? Function(_FilterNowPlayingMovies value)? filterNowPlayingMovies,
    TResult? Function(_UnfilterNowPlayingMovies value)?
        unfilterNowPlayingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetNowPlayingMovies value)? getNowPlayingMovies,
    TResult Function(_FilterNowPlayingMovies value)? filterNowPlayingMovies,
    TResult Function(_UnfilterNowPlayingMovies value)? unfilterNowPlayingMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNowPlayingMoviesEventCopyWith<$Res> {
  factory $GetNowPlayingMoviesEventCopyWith(GetNowPlayingMoviesEvent value,
          $Res Function(GetNowPlayingMoviesEvent) then) =
      _$GetNowPlayingMoviesEventCopyWithImpl<$Res, GetNowPlayingMoviesEvent>;
}

/// @nodoc
class _$GetNowPlayingMoviesEventCopyWithImpl<$Res,
        $Val extends GetNowPlayingMoviesEvent>
    implements $GetNowPlayingMoviesEventCopyWith<$Res> {
  _$GetNowPlayingMoviesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetNowPlayingMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$GetNowPlayingMoviesEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetNowPlayingMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'GetNowPlayingMoviesEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int page) getNowPlayingMovies,
    required TResult Function(int id) filterNowPlayingMovies,
    required TResult Function() unfilterNowPlayingMovies,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int page)? getNowPlayingMovies,
    TResult? Function(int id)? filterNowPlayingMovies,
    TResult? Function()? unfilterNowPlayingMovies,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page)? getNowPlayingMovies,
    TResult Function(int id)? filterNowPlayingMovies,
    TResult Function()? unfilterNowPlayingMovies,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetNowPlayingMovies value) getNowPlayingMovies,
    required TResult Function(_FilterNowPlayingMovies value)
        filterNowPlayingMovies,
    required TResult Function(_UnfilterNowPlayingMovies value)
        unfilterNowPlayingMovies,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetNowPlayingMovies value)? getNowPlayingMovies,
    TResult? Function(_FilterNowPlayingMovies value)? filterNowPlayingMovies,
    TResult? Function(_UnfilterNowPlayingMovies value)?
        unfilterNowPlayingMovies,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetNowPlayingMovies value)? getNowPlayingMovies,
    TResult Function(_FilterNowPlayingMovies value)? filterNowPlayingMovies,
    TResult Function(_UnfilterNowPlayingMovies value)? unfilterNowPlayingMovies,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GetNowPlayingMoviesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetNowPlayingMoviesImplCopyWith<$Res> {
  factory _$$GetNowPlayingMoviesImplCopyWith(_$GetNowPlayingMoviesImpl value,
          $Res Function(_$GetNowPlayingMoviesImpl) then) =
      __$$GetNowPlayingMoviesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$GetNowPlayingMoviesImplCopyWithImpl<$Res>
    extends _$GetNowPlayingMoviesEventCopyWithImpl<$Res,
        _$GetNowPlayingMoviesImpl>
    implements _$$GetNowPlayingMoviesImplCopyWith<$Res> {
  __$$GetNowPlayingMoviesImplCopyWithImpl(_$GetNowPlayingMoviesImpl _value,
      $Res Function(_$GetNowPlayingMoviesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetNowPlayingMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$GetNowPlayingMoviesImpl(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetNowPlayingMoviesImpl implements _GetNowPlayingMovies {
  const _$GetNowPlayingMoviesImpl(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'GetNowPlayingMoviesEvent.getNowPlayingMovies(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNowPlayingMoviesImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  /// Create a copy of GetNowPlayingMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNowPlayingMoviesImplCopyWith<_$GetNowPlayingMoviesImpl> get copyWith =>
      __$$GetNowPlayingMoviesImplCopyWithImpl<_$GetNowPlayingMoviesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int page) getNowPlayingMovies,
    required TResult Function(int id) filterNowPlayingMovies,
    required TResult Function() unfilterNowPlayingMovies,
  }) {
    return getNowPlayingMovies(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int page)? getNowPlayingMovies,
    TResult? Function(int id)? filterNowPlayingMovies,
    TResult? Function()? unfilterNowPlayingMovies,
  }) {
    return getNowPlayingMovies?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page)? getNowPlayingMovies,
    TResult Function(int id)? filterNowPlayingMovies,
    TResult Function()? unfilterNowPlayingMovies,
    required TResult orElse(),
  }) {
    if (getNowPlayingMovies != null) {
      return getNowPlayingMovies(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetNowPlayingMovies value) getNowPlayingMovies,
    required TResult Function(_FilterNowPlayingMovies value)
        filterNowPlayingMovies,
    required TResult Function(_UnfilterNowPlayingMovies value)
        unfilterNowPlayingMovies,
  }) {
    return getNowPlayingMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetNowPlayingMovies value)? getNowPlayingMovies,
    TResult? Function(_FilterNowPlayingMovies value)? filterNowPlayingMovies,
    TResult? Function(_UnfilterNowPlayingMovies value)?
        unfilterNowPlayingMovies,
  }) {
    return getNowPlayingMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetNowPlayingMovies value)? getNowPlayingMovies,
    TResult Function(_FilterNowPlayingMovies value)? filterNowPlayingMovies,
    TResult Function(_UnfilterNowPlayingMovies value)? unfilterNowPlayingMovies,
    required TResult orElse(),
  }) {
    if (getNowPlayingMovies != null) {
      return getNowPlayingMovies(this);
    }
    return orElse();
  }
}

abstract class _GetNowPlayingMovies implements GetNowPlayingMoviesEvent {
  const factory _GetNowPlayingMovies(final int page) =
      _$GetNowPlayingMoviesImpl;

  int get page;

  /// Create a copy of GetNowPlayingMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetNowPlayingMoviesImplCopyWith<_$GetNowPlayingMoviesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterNowPlayingMoviesImplCopyWith<$Res> {
  factory _$$FilterNowPlayingMoviesImplCopyWith(
          _$FilterNowPlayingMoviesImpl value,
          $Res Function(_$FilterNowPlayingMoviesImpl) then) =
      __$$FilterNowPlayingMoviesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$FilterNowPlayingMoviesImplCopyWithImpl<$Res>
    extends _$GetNowPlayingMoviesEventCopyWithImpl<$Res,
        _$FilterNowPlayingMoviesImpl>
    implements _$$FilterNowPlayingMoviesImplCopyWith<$Res> {
  __$$FilterNowPlayingMoviesImplCopyWithImpl(
      _$FilterNowPlayingMoviesImpl _value,
      $Res Function(_$FilterNowPlayingMoviesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetNowPlayingMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FilterNowPlayingMoviesImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FilterNowPlayingMoviesImpl implements _FilterNowPlayingMovies {
  const _$FilterNowPlayingMoviesImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'GetNowPlayingMoviesEvent.filterNowPlayingMovies(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterNowPlayingMoviesImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of GetNowPlayingMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterNowPlayingMoviesImplCopyWith<_$FilterNowPlayingMoviesImpl>
      get copyWith => __$$FilterNowPlayingMoviesImplCopyWithImpl<
          _$FilterNowPlayingMoviesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int page) getNowPlayingMovies,
    required TResult Function(int id) filterNowPlayingMovies,
    required TResult Function() unfilterNowPlayingMovies,
  }) {
    return filterNowPlayingMovies(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int page)? getNowPlayingMovies,
    TResult? Function(int id)? filterNowPlayingMovies,
    TResult? Function()? unfilterNowPlayingMovies,
  }) {
    return filterNowPlayingMovies?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page)? getNowPlayingMovies,
    TResult Function(int id)? filterNowPlayingMovies,
    TResult Function()? unfilterNowPlayingMovies,
    required TResult orElse(),
  }) {
    if (filterNowPlayingMovies != null) {
      return filterNowPlayingMovies(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetNowPlayingMovies value) getNowPlayingMovies,
    required TResult Function(_FilterNowPlayingMovies value)
        filterNowPlayingMovies,
    required TResult Function(_UnfilterNowPlayingMovies value)
        unfilterNowPlayingMovies,
  }) {
    return filterNowPlayingMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetNowPlayingMovies value)? getNowPlayingMovies,
    TResult? Function(_FilterNowPlayingMovies value)? filterNowPlayingMovies,
    TResult? Function(_UnfilterNowPlayingMovies value)?
        unfilterNowPlayingMovies,
  }) {
    return filterNowPlayingMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetNowPlayingMovies value)? getNowPlayingMovies,
    TResult Function(_FilterNowPlayingMovies value)? filterNowPlayingMovies,
    TResult Function(_UnfilterNowPlayingMovies value)? unfilterNowPlayingMovies,
    required TResult orElse(),
  }) {
    if (filterNowPlayingMovies != null) {
      return filterNowPlayingMovies(this);
    }
    return orElse();
  }
}

abstract class _FilterNowPlayingMovies implements GetNowPlayingMoviesEvent {
  const factory _FilterNowPlayingMovies(final int id) =
      _$FilterNowPlayingMoviesImpl;

  int get id;

  /// Create a copy of GetNowPlayingMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterNowPlayingMoviesImplCopyWith<_$FilterNowPlayingMoviesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnfilterNowPlayingMoviesImplCopyWith<$Res> {
  factory _$$UnfilterNowPlayingMoviesImplCopyWith(
          _$UnfilterNowPlayingMoviesImpl value,
          $Res Function(_$UnfilterNowPlayingMoviesImpl) then) =
      __$$UnfilterNowPlayingMoviesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnfilterNowPlayingMoviesImplCopyWithImpl<$Res>
    extends _$GetNowPlayingMoviesEventCopyWithImpl<$Res,
        _$UnfilterNowPlayingMoviesImpl>
    implements _$$UnfilterNowPlayingMoviesImplCopyWith<$Res> {
  __$$UnfilterNowPlayingMoviesImplCopyWithImpl(
      _$UnfilterNowPlayingMoviesImpl _value,
      $Res Function(_$UnfilterNowPlayingMoviesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetNowPlayingMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnfilterNowPlayingMoviesImpl implements _UnfilterNowPlayingMovies {
  const _$UnfilterNowPlayingMoviesImpl();

  @override
  String toString() {
    return 'GetNowPlayingMoviesEvent.unfilterNowPlayingMovies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnfilterNowPlayingMoviesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int page) getNowPlayingMovies,
    required TResult Function(int id) filterNowPlayingMovies,
    required TResult Function() unfilterNowPlayingMovies,
  }) {
    return unfilterNowPlayingMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int page)? getNowPlayingMovies,
    TResult? Function(int id)? filterNowPlayingMovies,
    TResult? Function()? unfilterNowPlayingMovies,
  }) {
    return unfilterNowPlayingMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page)? getNowPlayingMovies,
    TResult Function(int id)? filterNowPlayingMovies,
    TResult Function()? unfilterNowPlayingMovies,
    required TResult orElse(),
  }) {
    if (unfilterNowPlayingMovies != null) {
      return unfilterNowPlayingMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetNowPlayingMovies value) getNowPlayingMovies,
    required TResult Function(_FilterNowPlayingMovies value)
        filterNowPlayingMovies,
    required TResult Function(_UnfilterNowPlayingMovies value)
        unfilterNowPlayingMovies,
  }) {
    return unfilterNowPlayingMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetNowPlayingMovies value)? getNowPlayingMovies,
    TResult? Function(_FilterNowPlayingMovies value)? filterNowPlayingMovies,
    TResult? Function(_UnfilterNowPlayingMovies value)?
        unfilterNowPlayingMovies,
  }) {
    return unfilterNowPlayingMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetNowPlayingMovies value)? getNowPlayingMovies,
    TResult Function(_FilterNowPlayingMovies value)? filterNowPlayingMovies,
    TResult Function(_UnfilterNowPlayingMovies value)? unfilterNowPlayingMovies,
    required TResult orElse(),
  }) {
    if (unfilterNowPlayingMovies != null) {
      return unfilterNowPlayingMovies(this);
    }
    return orElse();
  }
}

abstract class _UnfilterNowPlayingMovies implements GetNowPlayingMoviesEvent {
  const factory _UnfilterNowPlayingMovies() = _$UnfilterNowPlayingMoviesImpl;
}

/// @nodoc
mixin _$GetNowPlayingMoviesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponseListMovie response) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseListMovie response)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseListMovie response)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNowPlayingMoviesStateCopyWith<$Res> {
  factory $GetNowPlayingMoviesStateCopyWith(GetNowPlayingMoviesState value,
          $Res Function(GetNowPlayingMoviesState) then) =
      _$GetNowPlayingMoviesStateCopyWithImpl<$Res, GetNowPlayingMoviesState>;
}

/// @nodoc
class _$GetNowPlayingMoviesStateCopyWithImpl<$Res,
        $Val extends GetNowPlayingMoviesState>
    implements $GetNowPlayingMoviesStateCopyWith<$Res> {
  _$GetNowPlayingMoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetNowPlayingMoviesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GetNowPlayingMoviesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetNowPlayingMoviesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GetNowPlayingMoviesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponseListMovie response) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseListMovie response)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseListMovie response)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GetNowPlayingMoviesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$GetNowPlayingMoviesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetNowPlayingMoviesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'GetNowPlayingMoviesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponseListMovie response) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseListMovie response)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseListMovie response)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GetNowPlayingMoviesState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponseListMovie response});

  $ResponseListMovieCopyWith<$Res> get response;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$GetNowPlayingMoviesStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetNowPlayingMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$SuccessImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponseListMovie,
    ));
  }

  /// Create a copy of GetNowPlayingMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseListMovieCopyWith<$Res> get response {
    return $ResponseListMovieCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.response);

  @override
  final ResponseListMovie response;

  @override
  String toString() {
    return 'GetNowPlayingMoviesState.success(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of GetNowPlayingMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponseListMovie response) success,
    required TResult Function(String message) error,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseListMovie response)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseListMovie response)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements GetNowPlayingMoviesState {
  const factory _Success(final ResponseListMovie response) = _$SuccessImpl;

  ResponseListMovie get response;

  /// Create a copy of GetNowPlayingMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$GetNowPlayingMoviesStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetNowPlayingMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GetNowPlayingMoviesState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of GetNowPlayingMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponseListMovie response) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseListMovie response)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseListMovie response)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements GetNowPlayingMoviesState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of GetNowPlayingMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
