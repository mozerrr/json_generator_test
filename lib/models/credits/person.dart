import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable()
class Person {
  Person(
      this.name,
      this.id,
      );

  final String name;
  final int id;
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
