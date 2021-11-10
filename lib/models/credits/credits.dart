import 'package:json_annotation/json_annotation.dart';
import 'package:json_generator_test/models/credits/person.dart';
import 'media.dart';

part 'credits.g.dart';

@JsonSerializable()
class Credits {
  Credits(
    this.creditType,
    this.department,
    this.job,
    this.media,
    this.mediaType,
    this.id,
    this.person,
  );

  final String creditType;
  final String department;
  final String job;
  final Media media;
  final String mediaType;
  final String id;
  final Person person;
}
