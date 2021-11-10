import '../../mastodon_api_model.dart';

abstract class IMastodonApiPushPayload implements IMastodonApiResponse {
  String get notificationId;

  String get notificationType;

  String? get title;

  String? get body;

  String? get icon;
}
