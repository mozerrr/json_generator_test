import 'package:json_generator_test/fedivers_api/date_time/date_time_mock_helper.dart';

import 'mastodon_api_account_identity_proof_model_impl.dart';

abstract class MastodonApiAccountIdentityProofMockHelper {
  static MastodonApiAccountIdentityProof generate({
    required String seed,
  }) =>
      MastodonApiAccountIdentityProof(
        profileUrl: seed + 'profileUrl',
        proofUrl: seed + 'proofUrl',
        provider: seed + 'provider',
        providerUsername: seed + 'providerUsername',
        updatedAt: DateTimeMockHelper.generate(seed: seed + 'updatedAt'),
      );
}
