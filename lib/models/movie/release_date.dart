import 'package:json_generator_test/models/movie/release_date_element.dart';
import 'package:json_annotation/json_annotation.dart';

part 'release_date.g.dart';

@JsonSerializable()
class ReleaseDate {
  ReleaseDate(
    this.iso31661,
    this.releaseDates,
  );

  final String iso31661;
  final List<ReleaseDateElement> releaseDates;
}
