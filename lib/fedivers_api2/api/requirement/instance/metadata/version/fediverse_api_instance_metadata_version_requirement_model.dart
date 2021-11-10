import 'package:json_generator_test/fedivers_api/api/requirement/state/fediverse_api_feature_requirement_state_sealed.dart';
import 'package:json_generator_test/fedivers_api/api/version/fediverse_api_version_model.dart';
import 'package:json_generator_test/fedivers_api/api/version/range/fediverse_api_version_range_model.dart';

import '../../../fediverse_api_requirement_model.dart';
import 'fediverse_api_instance_metadata_version_requirement_model_impl.dart';

abstract class IFediverseApiInstanceMetadataVersionRequirement<
    T extends IFediverseApiVersion?> implements IFediverseApiRequirement<T> {
  static const instanceVersionNotInRangeReasonName =
      'instance_version_not_in_range';
  static const instanceVersionUnknown = 'instance_version_unknown';

  IFediverseApiVersionRange get versionRange;
}

extension FediverseApiInstanceMetadataVersionRequirementExtension
    on IFediverseApiInstanceMetadataVersionRequirement {
  FediverseApiFeatureRequirementState check(IFediverseApiVersion? data) =>
      FediverseApiInstanceMetadataVersionRequirement.checkState(
        data: data,
        versionRange: versionRange,
      );
}
