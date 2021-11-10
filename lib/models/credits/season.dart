import 'package:json_annotation/json_annotation.dart';

part 'season.g.dart';

@JsonSerializable()
class Season {
  Season(
      this.airDate,
      this.posterPath,
      this.seasonNumber,
      );

  final DateTime airDate;
  final String posterPath;
  final int seasonNumber;
}
