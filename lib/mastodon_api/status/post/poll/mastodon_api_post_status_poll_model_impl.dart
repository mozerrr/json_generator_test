import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:json_generator_test/fedivers_api/interface_to_impl/interface_to_impl_helper.dart';
import 'mastodon_api_post_status_poll_model.dart';

part 'mastodon_api_post_status_poll_model_impl.freezed.dart';
part 'mastodon_api_post_status_poll_model_impl.g.dart';

// ignore_for_file: no-magic-number
@HiveType(typeId: 0)
@freezed
class MastodonApiPostStatusPoll
    with _$MastodonApiPostStatusPoll
    implements IMastodonApiPostStatusPoll {
  const factory MastodonApiPostStatusPoll({
    @HiveField(0) @JsonKey(name: 'expires_in') required int expiresInSeconds,
    @HiveField(1)
    @JsonKey(name: 'hide_totals', includeIfNull: false)
        required bool hideTotals,
    @HiveField(2) required bool multiple,
    @HiveField(3) @JsonKey(name: 'options') required List<String> options,
  }) = _MastodonApiPostStatusPoll;

  factory MastodonApiPostStatusPoll.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MastodonApiPostStatusPollFromJson(json);
}

extension IMastodonApiPostStatusPollInterfaceExtension
    on IMastodonApiPostStatusPoll {
  MastodonApiPostStatusPoll toMastodonApiPostStatusPoll({
    bool forceNewObject = false,
  }) =>
      InterfaceToImplHelper.interfaceToImpl(
        this,
        (_) => MastodonApiPostStatusPoll(
          expiresInSeconds: expiresInSeconds,
          hideTotals: hideTotals,
          multiple: multiple,
          options: options,
        ),
        forceNewObject: forceNewObject,
      );
}
