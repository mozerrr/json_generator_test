import 'movie_list_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_list.g.dart';

@JsonSerializable()
class MovieList {
  MovieList(
    this.createdBy,
    this.description,
    this.favoriteCount,
    this.id,
    this.items,
    this.itemCount,
    this.iso6391,
    this.name,
    this.posterPath,
  );

  final String createdBy;
  final String description;
  final int favoriteCount;
  final String id;
  final List<MovieItem> items;
  final int itemCount;
  final String iso6391;
  final String name;
  final String posterPath;
  factory MovieList.fromJson(Map<String, dynamic> json) => _$MovieListFromJson(json);
}
