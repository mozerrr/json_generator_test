import 'package:json_generator_test/models/credits/season.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media.g.dart';

@JsonSerializable()
class Media {
  Media(
      this.id,
      this.name,
      this.originalName,
      this.character,
      this.episodes,
      this.seasons,
      );

  final int id;
  final String name;
  final String originalName;
  final String character;
  final List<dynamic> episodes;
  final List<Season> seasons;
  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}
