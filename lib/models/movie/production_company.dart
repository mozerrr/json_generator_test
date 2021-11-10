import 'package:json_annotation/json_annotation.dart';

part 'production_company.g.dart';

@JsonSerializable()
class ProductionCompany {
  ProductionCompany(
      this.id,
      this.logoPath,
      this.name,
      this.originCountry,
      );

  final int id;
  final String logoPath;
  final String name;
  final String originCountry;
  factory ProductionCompany.fromJson(Map<String, dynamic> json) => _$ProductionCompanyFromJson(json);
}
