import 'package:json_generator_test/fedivers_api/date_time/date_time_mock_helper.dart';
import 'package:json_generator_test/fedivers_api/primitive_type/primitive_type_mock_helper.dart';

import '../id/mastodon_api_id_mock_helper.dart';

import 'mastodon_api_featured_tags_model_impl.dart';

class MastodonApiFeaturedTagMockHelper {
  static MastodonApiFeaturedTag generate({
    required String seed,
  }) =>
      MastodonApiFeaturedTag(
        id: MastodonApiIdMockHelper.generate(seed: seed),
        lastStatusAt: DateTimeMockHelper.generate(seed: seed + 'lastStatusAt'),
        statusesCount: IntMockHelper.generate(seed: seed + 'statusesCount'),
        name: seed + 'name',
      );
}
