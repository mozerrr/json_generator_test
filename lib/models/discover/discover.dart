import 'package:json_generator_test/models/movie/movie.dart';
import 'package:json_annotation/json_annotation.dart';

part 'discover.g.dart';

@JsonSerializable()
class Discover {
  Discover(
    this.page,
    this.results,
    this.totalResults,
    this.totalPages,
  );

  final int page;
  final List<Movie> results;
  final int totalResults;
  final int totalPages;
}
