import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:json_generator_test/fedivers_api/interface_to_impl/interface_to_impl_helper.dart';
import 'package:json_generator_test/fedivers_api/json/json_parse_helper.dart';

import 'mastodon_api_account_relationship_model.dart';

part 'mastodon_api_account_relationship_model_impl.freezed.dart';

part 'mastodon_api_account_relationship_model_impl.g.dart';

// ignore_for_file: no-magic-number

@HiveType(typeId: 0)
@freezed
class MastodonApiAccountRelationship
    with _$MastodonApiAccountRelationship
    implements IMastodonApiAccountRelationship {
  const factory MastodonApiAccountRelationship({
    @HiveField(1) required bool? blocking,
    @JsonKey(name: 'domain_blocking')
    @HiveField(2)
        required bool? domainBlocking,
    @HiveField(3) required bool? endorsed,
    @HiveField(4) @JsonKey(name: 'followed_by') required bool? followedBy,
    @HiveField(5) required bool? following,
    @HiveField(6) required String? id,
    @HiveField(7) required bool? muting,
    @HiveField(8)
    @JsonKey(name: 'muting_notifications')
    @HiveField(9)
        required bool? mutingNotifications,
    @HiveField(10) required bool? requested,
    @JsonKey(name: 'showing_reblogs')
    @HiveField(11)
        required bool? showingReblogs,
    @HiveField(13) @JsonKey(name: 'blocked_by') required bool? blockedBy,
    @HiveField(14) required String? note,
    @HiveField(15) required bool? notifying,
  }) = _MastodonApiAccountRelationship;

  factory MastodonApiAccountRelationship.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MastodonApiAccountRelationshipFromJson(json);

  static MastodonApiAccountRelationship? fromJsonOrNullOnError(
    Map<String, dynamic>? json,
  ) =>
      JsonParseHelper.fromJsonOrNullOnError(
        json,
        (dynamic json) => MastodonApiAccountRelationship.fromJson(
          json as Map<String, dynamic>,
        ),
      );
}

extension IMastodonApiAccountRelationshipInterfaceExtension
    on IMastodonApiAccountRelationship {
  MastodonApiAccountRelationship toMastodonApiAccountRelationship({
    bool forceNewObject = false,
  }) =>
      InterfaceToImplHelper.interfaceToImpl(
        this,
        (_) => MastodonApiAccountRelationship(
          blocking: blocking,
          domainBlocking: domainBlocking,
          endorsed: endorsed,
          followedBy: followedBy,
          following: following,
          id: id,
          muting: muting,
          mutingNotifications: mutingNotifications,
          requested: requested,
          showingReblogs: showingReblogs,
          blockedBy: blockedBy,
          note: note,
          notifying: notifying,
        ),
        forceNewObject: forceNewObject,
      );
}
