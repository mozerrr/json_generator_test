import 'package:json_annotation/json_annotation.dart';

part 'collection_part.g.dart';

@JsonSerializable()
class CollectionPart {
  CollectionPart(
      this.adult,
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.releaseDate,
      this.posterPath,
      this.popularity,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount,
      );

  final bool adult;
  final dynamic backdropPath;
  final List<int> genreIds;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final DateTime releaseDate;
  final String posterPath;
  final double popularity;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;
  factory CollectionPart.fromJson(Map<String, dynamic> json) => _$CollectionPartFromJson(json);
}
