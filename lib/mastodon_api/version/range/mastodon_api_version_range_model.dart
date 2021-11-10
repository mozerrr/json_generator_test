import '../mastodon_api_version_model.dart';

abstract class IMastodonApiVersionRange {
  IMastodonApiVersion? get min;

  IMastodonApiVersion? get max;
}
