import 'change.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_change.g.dart';

@JsonSerializable()
class MovieChange {
  MovieChange(
    this.key,
    this.items,
  );

  final String key;
  final List<Change> items;
}
