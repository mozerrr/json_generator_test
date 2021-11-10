import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:json_generator_test/fedivers_api/interface_to_impl/interface_to_impl_helper.dart';

import 'mastodon_api_instance_stats_model.dart';

// ignore_for_file: no-magic-number

part 'mastodon_api_instance_stats_model_impl.freezed.dart';

part 'mastodon_api_instance_stats_model_impl.g.dart';

@HiveType(typeId: 0)
@freezed
class MastodonApiInstanceStats
    with _$MastodonApiInstanceStats
    implements IMastodonApiInstanceStats {
  const factory MastodonApiInstanceStats({
    @JsonKey(name: 'user_count') @HiveField(0) required int? userCount,
    @JsonKey(name: 'status_count') @HiveField(1) required int? statusCount,
    @JsonKey(name: 'domain_count') @HiveField(2) required int? domainCount,
  }) = _MastodonApiInstanceStats;

  factory MastodonApiInstanceStats.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MastodonApiInstanceStatsFromJson(json);
}

extension MastodonApiInstanceStatsInterfaceExtension
    on IMastodonApiInstanceStats {
  MastodonApiInstanceStats toMastodonApiInstanceStats({
    bool forceNewObject = false,
  }) =>
      InterfaceToImplHelper.interfaceToImpl(
        this,
        (_) => MastodonApiInstanceStats(
          userCount: userCount,
          statusCount: statusCount,
          domainCount: domainCount,
        ),
        forceNewObject: forceNewObject,
      );
}
