import 'certification.dart';
import 'package:json_annotation/json_annotation.dart';

part 'certifications.g.dart';

@JsonSerializable()
class Certifications {
  Certifications(
      this.us,
      this.ca,
      this.au,
      this.de,
      this.fr,
      this.nz,
      this.certificationsIn,
      this.gb,
      this.nl,
      this.br,
      this.fi,
      this.bg,
      this.es,
      this.ph,
      this.pt,
      );

  final List<Certification> us;
  final List<Certification> ca;
  final List<Certification> au;
  final List<Certification> de;
  final List<Certification> fr;
  final List<Certification> nz;
  final List<Certification> certificationsIn;
  final List<Certification> gb;
  final List<Certification> nl;
  final List<Certification> br;
  final List<Certification> fi;
  final List<Certification> bg;
  final List<Certification> es;
  final List<Certification> ph;
  final List<Certification> pt;
}
