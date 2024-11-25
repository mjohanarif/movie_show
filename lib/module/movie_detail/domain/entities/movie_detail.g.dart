// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieDetailModelImpl _$$MovieDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieDetailModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      posterPath: json['poster_path'] as String?,
      overview: json['overview'] as String,
      backDrop: json['backdrop_path'] as String?,
      runtime: (json['runtime'] as num).toInt(),
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      genres: parse(json['genres']),
    );

Map<String, dynamic> _$$MovieDetailModelImplToJson(
        _$MovieDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster_path': instance.posterPath,
      'overview': instance.overview,
      'backdrop_path': instance.backDrop,
      'runtime': instance.runtime,
      'vote_average': instance.voteAverage,
      'genres': instance.genres,
    };
