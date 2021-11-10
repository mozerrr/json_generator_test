import 'package:json_annotation/json_annotation.dart';

part 'certification.g.dart';

@JsonSerializable()
class Certification {
  Certification(
      this.certification,
      this.meaning,
      this.order,
      );

  final String certification;
  final String meaning;
  final int order;
  factory Certification.fromJson(Map<String, dynamic> json) => _$CertificationFromJson(json);
}
