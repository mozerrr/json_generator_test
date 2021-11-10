import 'package:json_annotation/json_annotation.dart';

part 'release_date_element.g.dart';

@JsonSerializable()
class ReleaseDateElement {
  ReleaseDateElement(
    this.certification,
    this.iso6391,
    this.releaseDate,
    this.type,
    this.note,
  );

  final String certification;
  final Iso6391 iso6391;
  final DateTime releaseDate;
  final int type;
  final String note;
}

enum Iso6391 { EMPTY, DE, FR }
