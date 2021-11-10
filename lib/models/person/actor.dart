import 'package:json_annotation/json_annotation.dart';

part 'actor.g.dart';

@JsonSerializable()
class Actor {
  Actor(
    this.birthday,
    this.knownForDepartment,
    this.deathday,
    this.id,
    this.name,
    this.alsoKnownAs,
    this.gender,
    this.biography,
    this.popularity,
    this.placeOfBirth,
    this.profilePath,
    this.adult,
    this.imdbId,
    this.homepage,
  );

  final DateTime birthday;
  final String knownForDepartment;
  final dynamic deathday;
  final int id;
  final String name;
  final List<String> alsoKnownAs;
  final int gender;
  final String biography;
  final double popularity;
  final String placeOfBirth;
  final String profilePath;
  final bool adult;
  final String imdbId;
  final dynamic homepage;
  factory Actor.fromJson(Map<String, dynamic> json) => _$ActorFromJson(json);
}
