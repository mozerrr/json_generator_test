import 'package:json_annotation/json_annotation.dart';
import 'avatar.dart';

part 'account.g.dart';

@JsonSerializable()
class Account {
  Account(
    this.avatar,
    this.id,
    this.iso6391,
    this.iso31661,
    this.name,
    this.includeAdult,
    this.username,
  );

  final Avatar avatar;
  final int id;
  final String iso6391;
  final String iso31661;
  final String name;
  final bool includeAdult;
  final String username;
  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
}
