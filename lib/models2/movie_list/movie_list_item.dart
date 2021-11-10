import 'package:json_annotation/json_annotation.dart';

part 'movie_list_item.g.dart';

@JsonSerializable()
class MovieItem {
  MovieItem(
    this.posterPath,
    this.adult,
    this.overview,
    this.releaseDate,
    this.originalTitle,
    this.genreIds,
    this.id,
    this.mediaType,
    this.originalLanguage,
    this.title,
    this.backdropPath,
    this.popularity,
    this.voteCount,
    this.video,
    this.voteAverage,
  );

  final String posterPath;
  final bool adult;
  final String overview;
  final DateTime releaseDate;
  final String originalTitle;
  final List<int> genreIds;
  final int id;
  final String mediaType;
  final String originalLanguage;
  final String title;
  final dynamic backdropPath;
  final double popularity;
  final int voteCount;
  final bool video;
  final double voteAverage;
  factory MovieItem.fromJson(Map<String, dynamic> json) => _$MovieItemFromJson(json);
}
