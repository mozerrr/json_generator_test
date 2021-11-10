import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';

@JsonSerializable()
class Company {
  Company(
    this.description,
    this.headquarters,
    this.homepage,
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
    this.parentCompany,
  );

  final String description;
  final String headquarters;
  final String homepage;
  final int id;
  final String logoPath;
  final String name;
  final String originCountry;
  final dynamic parentCompany;
}
