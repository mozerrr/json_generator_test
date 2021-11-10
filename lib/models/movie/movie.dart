import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

enum OriginalLanguage { EN }

@JsonSerializable()
class Movie {
  Movie(
      this.posterPath,
      this.adult,
      this.overview,
      this.releaseDate,
      this.genreIds,
      this.id,
      this.originalTitle,
      this.originalLanguage,
      this.title,
      this.backdropPath,
      this.popularity,
      this.voteCount,
      this.video,
      this.voteAverage,
      );

  final dynamic posterPath;
  final bool adult;
  final String overview;
  final DateTime releaseDate;
  final List<int> genreIds;
  final int id;
  final String originalTitle;
  final OriginalLanguage originalLanguage;
  final String title;
  final dynamic backdropPath;
  final double popularity;
  final int voteCount;
  final bool video;
  final double voteAverage;
}
