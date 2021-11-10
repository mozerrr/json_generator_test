import 'package:json_annotation/json_annotation.dart';

part 'change.g.dart';

@JsonSerializable()
class Change {
  Change(
    this.id,
    this.action,
    this.time,
    this.iso6391,
    this.value,
    this.originalValue,
  );

  final String id;
  final String action;
  final String time;
  final String iso6391;
  final String value;
  final String originalValue;
}
