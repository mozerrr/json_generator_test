import 'package:json_generator_test/fedivers_api/rest/response/error/rest_response_error_model.dart';

import 'details/mastodon_api_rest_error_details_model.dart';

abstract class IMastodonApiRestError {
  IRestResponseError get restResponseError;

  IMastodonApiRestErrorDetails? get details;
}
