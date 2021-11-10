import 'package:json_generator_test/fedivers_api/duration/duration_mock_helper.dart';
import 'package:json_generator_test/fedivers_api/primitive_type/primitive_type_mock_helper.dart';

import 'mastodon_api_post_status_poll_model_impl.dart';

abstract class MastodonApiPostStatusPollMockHelper {
  static MastodonApiPostStatusPoll generate({
    required String seed,
  }) =>
      MastodonApiPostStatusPoll(
        expiresInSeconds: DurationMockHelper.generate(seed: seed).inSeconds,
        hideTotals: BoolMockHelper.generate(seed: seed + 'hideTotals'),
        multiple: BoolMockHelper.generate(seed: seed + 'multiple'),
        options: [
          seed + '1',
          seed + '2',
        ],
      );
}
