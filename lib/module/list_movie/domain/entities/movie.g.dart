// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieImpl _$$MovieImplFromJson(Map<String, dynamic> json) => _$MovieImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      genreIds: (json['genre_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$$MovieImplToJson(_$MovieImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'genre_ids': instance.genreIds,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
    };
