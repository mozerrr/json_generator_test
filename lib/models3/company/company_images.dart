import 'company_logo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'company_images.g.dart';

@JsonSerializable()
class CompanyImage {
  CompanyImage(
    this.id,
    this.logos,
  );

  final int id;
  final List<CompanyLogo> logos;
  factory CompanyImage.fromJson(Map<String, dynamic> json) => _$CompanyImageFromJson(json);
}
