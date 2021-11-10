import 'package:json_generator_test/fedivers_api/api/fediverse_api_model.dart';

abstract class IMastodonApiObject implements IFediverseApiObject {}

abstract class IMastodonApiResponsePart
    implements IFediverseApiResponsePart, IMastodonApiObject {}

abstract class IMastodonApiResponse implements IMastodonApiResponsePart {}

abstract class IMastodonApiUnion implements IFediverseApiUnion {}
