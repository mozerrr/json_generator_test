import 'package:json_annotation/json_annotation.dart';

part 'author_details.g.dart';

@JsonSerializable()
class AuthorDetails {
  AuthorDetails(
      this.name,
      this.username,
      this.avatarPath,
      this.rating,
      );

  final String name;
  final String username;
  final String avatarPath;
  final int rating;
  factory AuthorDetails.fromJson(Map<String, dynamic> json) => _$AuthorDetailsFromJson(json);
}
