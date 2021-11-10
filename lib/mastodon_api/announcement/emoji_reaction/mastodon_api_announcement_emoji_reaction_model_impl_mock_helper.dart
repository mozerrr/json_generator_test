import 'package:json_generator_test/fedivers_api/primitive_type/primitive_type_mock_helper.dart';

import 'mastodon_api_announcement_emoji_reaction_model_impl.dart';

class MastodonApiAnnouncementEmojiReactionMockHelper {
  static MastodonApiAnnouncementEmojiReaction generate({
    required String seed,
  }) =>
      MastodonApiAnnouncementEmojiReaction(
        name: seed + 'name',
        count: IntMockHelper.generate(seed: seed + 'count'),
        me: BoolMockHelper.generate(seed: seed + 'me'),
        url: seed + 'url',
        staticUrl: seed + 'staticUrl',
      );
}
