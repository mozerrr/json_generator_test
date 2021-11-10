import 'package:json_annotation/json_annotation.dart';

part 'company_logo.g.dart';

@JsonSerializable()
class CompanyLogo {
  CompanyLogo(
    this.aspectRatio,
    this.filePath,
    this.height,
    this.id,
    this.fileType,
    this.voteAverage,
    this.voteCount,
    this.width,
  );

  final double aspectRatio;
  final String filePath;
  final int height;
  final String id;
  final String fileType;
  final int voteAverage;
  final int voteCount;
  final int width;
  factory CompanyLogo.fromJson(Map<String, dynamic> json) => _$CompanyLogoFromJson(json);
}
