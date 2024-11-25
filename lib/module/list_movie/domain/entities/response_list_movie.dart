import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie.dart';

part 'response_list_movie.freezed.dart';
part 'response_list_movie.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ResponseListMovie with _$ResponseListMovie {
  const factory ResponseListMovie({
    required int page,
    @JsonKey(name: 'total_pages') required int totalPages,
    required List<Movie> results,
    bool? isLoading,
    bool? isFiltered,
  }) = _ResponseListMovie;

  factory ResponseListMovie.fromJson(Map<String, dynamic> json) =>
      _$ResponseListMovieFromJson(json);
}
