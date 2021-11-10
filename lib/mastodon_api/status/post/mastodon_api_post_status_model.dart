import '../../mastodon_api_model.dart';

import 'poll/mastodon_api_post_status_poll_model.dart';

abstract class IMastodonApiBasePostStatus implements IMastodonApiObject {
  String? get status;

  List<String>? get mediaIds;

  IMastodonApiPostStatusPoll? get poll;

  bool get sensitive;

  String? get spoilerText;

  String get visibility;

  String? get language;

  String? get inReplyToId;
}

abstract class IMastodonApiPostStatus implements IMastodonApiBasePostStatus {}
