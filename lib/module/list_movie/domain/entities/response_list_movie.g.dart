// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_list_movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseListMovieImpl _$$ResponseListMovieImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseListMovieImpl(
      page: (json['page'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
      isLoading: json['isLoading'] as bool?,
      isFiltered: json['isFiltered'] as bool?,
    );

Map<String, dynamic> _$$ResponseListMovieImplToJson(
        _$ResponseListMovieImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.totalPages,
      'results': instance.results,
      'isLoading': instance.isLoading,
      'isFiltered': instance.isFiltered,
    };
