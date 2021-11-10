import 'certifications.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_certifications.g.dart';

@JsonSerializable()
class MovieCertification {
  MovieCertification(
    this.certifications,
  );

  final Certifications certifications;
  factory MovieCertification.fromJson(Map<String, dynamic> json) => _$MovieCertificationFromJson(json);
}
