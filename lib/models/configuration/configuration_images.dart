import 'package:json_annotation/json_annotation.dart';

part 'configuration_images.g.dart';

@JsonSerializable()
class ConfigurationImages {
  ConfigurationImages(
    this.baseUrl,
    this.secureBaseUrl,
    this.backdropSizes,
    this.logoSizes,
    this.posterSizes,
    this.profileSizes,
    this.stillSizes,
  );

  final String baseUrl;
  final String secureBaseUrl;
  final List<String> backdropSizes;
  final List<String> logoSizes;
  final List<String> posterSizes;
  final List<String> profileSizes;
  final List<String> stillSizes;
  factory ConfigurationImages.fromJson(Map<String, dynamic> json) => _$ConfigurationImagesFromJson(json);
}
