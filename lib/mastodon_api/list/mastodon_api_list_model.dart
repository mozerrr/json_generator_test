import '../mastodon_api_model.dart';

abstract class IMastodonApiList implements IMastodonApiResponse {
  String get id;

  String get title;

  String? get repliesPolicy;
}
