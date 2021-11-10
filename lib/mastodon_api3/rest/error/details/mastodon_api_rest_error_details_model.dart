abstract class IMastodonApiRestErrorDetails {
  String get error;

  String? get description;

  Map<String, List<IMastodonApiRestErrorDetails>>? get details;
}
