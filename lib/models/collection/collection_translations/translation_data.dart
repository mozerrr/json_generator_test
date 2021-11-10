import 'package:json_annotation/json_annotation.dart';

part 'translation_data.g.dart';

@JsonSerializable()
class TranslationData {
  TranslationData(
    this.title,
    this.overview,
    this.homepage,
  );

  final String title;
  final String overview;
  final String homepage;
}
