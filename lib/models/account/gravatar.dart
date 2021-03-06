import 'package:json_annotation/json_annotation.dart';

part 'gravatar.g.dart';

@JsonSerializable()
class Gravatar {
  Gravatar(
      this.hash,
      );

  final String hash;
  factory Gravatar.fromJson(Map<String, dynamic> json) => _$GravatarFromJson(json);
}
