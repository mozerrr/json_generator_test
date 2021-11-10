import 'package:json_annotation/json_annotation.dart';

part 'production_country.g.dart';

@JsonSerializable()
class ProductionCountry {
  ProductionCountry(
      this.iso31661,
      this.name,
      );

  final String iso31661;
  final String name;
  factory ProductionCountry.fromJson(Map<String, dynamic> json) => _$ProductionCountryFromJson(json);
}
