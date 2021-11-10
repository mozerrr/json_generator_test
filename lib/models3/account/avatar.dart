import 'package:json_annotation/json_annotation.dart';
import 'gravatar.dart';

part 'avatar.g.dart';

@JsonSerializable()
class Avatar {
  Avatar(
      this.gravatar,
      );

  final Gravatar gravatar;
  factory Avatar.fromJson(Map<String, dynamic> json) => _$AvatarFromJson(json);
}
