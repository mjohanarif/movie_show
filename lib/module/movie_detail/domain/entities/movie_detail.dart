import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail.freezed.dart';
part 'movie_detail.g.dart';

@freezed
class MovieDetailModel with _$MovieDetailModel {
  const factory MovieDetailModel({
    required int id,
    required String title,
    @JsonKey(name: 'poster_path') String? posterPath,
    required String overview,
    @JsonKey(name: 'backdrop_path') String? backDrop,
    required int runtime,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(fromJson: parse) required List<String> genres,
  }) = _MovieDetailModel;

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailModelFromJson(json);
}

List<String> parse(dynamic value) {
  return List<String>.from(value.map((value) => value['name']));
}
