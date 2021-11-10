import 'package:json_generator_test/models/configuration/configuration_images.dart';
import 'package:json_annotation/json_annotation.dart';

part 'configuration.g.dart';

@JsonSerializable()
class Configuration {
  Configuration(
    this.images,
    this.changeKeys,
  );

  final ConfigurationImages images;
  final List<String> changeKeys;
  factory Configuration.fromJson(Map<String, dynamic> json) => _$ConfigurationFromJson(json);
}

