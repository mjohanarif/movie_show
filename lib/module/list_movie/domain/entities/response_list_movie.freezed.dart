// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_list_movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseListMovie _$ResponseListMovieFromJson(Map<String, dynamic> json) {
  return _ResponseListMovie.fromJson(json);
}

/// @nodoc
mixin _$ResponseListMovie {
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  List<Movie> get results => throw _privateConstructorUsedError;

  /// Serializes this ResponseListMovie to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseListMovie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseListMovieCopyWith<ResponseListMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseListMovieCopyWith<$Res> {
  factory $ResponseListMovieCopyWith(
          ResponseListMovie value, $Res Function(ResponseListMovie) then) =
      _$ResponseListMovieCopyWithImpl<$Res, ResponseListMovie>;
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'total_pages') int totalPages,
      List<Movie> results});
}

/// @nodoc
class _$ResponseListMovieCopyWithImpl<$Res, $Val extends ResponseListMovie>
    implements $ResponseListMovieCopyWith<$Res> {
  _$ResponseListMovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseListMovie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? totalPages = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseListMovieImplCopyWith<$Res>
    implements $ResponseListMovieCopyWith<$Res> {
  factory _$$ResponseListMovieImplCopyWith(_$ResponseListMovieImpl value,
          $Res Function(_$ResponseListMovieImpl) then) =
      __$$ResponseListMovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'total_pages') int totalPages,
      List<Movie> results});
}

/// @nodoc
class __$$ResponseListMovieImplCopyWithImpl<$Res>
    extends _$ResponseListMovieCopyWithImpl<$Res, _$ResponseListMovieImpl>
    implements _$$ResponseListMovieImplCopyWith<$Res> {
  __$$ResponseListMovieImplCopyWithImpl(_$ResponseListMovieImpl _value,
      $Res Function(_$ResponseListMovieImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseListMovie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? totalPages = null,
    Object? results = null,
  }) {
    return _then(_$ResponseListMovieImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseListMovieImpl implements _ResponseListMovie {
  const _$ResponseListMovieImpl(
      {required this.page,
      @JsonKey(name: 'total_pages') required this.totalPages,
      required this.results});

  factory _$ResponseListMovieImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseListMovieImplFromJson(json);

  @override
  final int page;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  final List<Movie> results;

  @override
  String toString() {
    return 'ResponseListMovie(page: $page, totalPages: $totalPages, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseListMovieImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, totalPages,
      const DeepCollectionEquality().hash(results));

  /// Create a copy of ResponseListMovie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseListMovieImplCopyWith<_$ResponseListMovieImpl> get copyWith =>
      __$$ResponseListMovieImplCopyWithImpl<_$ResponseListMovieImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseListMovieImplToJson(
      this,
    );
  }
}

abstract class _ResponseListMovie implements ResponseListMovie {
  const factory _ResponseListMovie(
      {required final int page,
      @JsonKey(name: 'total_pages') required final int totalPages,
      required final List<Movie> results}) = _$ResponseListMovieImpl;

  factory _ResponseListMovie.fromJson(Map<String, dynamic> json) =
      _$ResponseListMovieImpl.fromJson;

  @override
  int get page;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  List<Movie> get results;

  /// Create a copy of ResponseListMovie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseListMovieImplCopyWith<_$ResponseListMovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
