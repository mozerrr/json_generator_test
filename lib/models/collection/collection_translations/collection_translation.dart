import 'package:json_annotation/json_annotation.dart';
import 'package:json_generator_test/models/collection/collection_translations/translation_data.dart';

part 'collection_translation.g.dart';

@JsonSerializable()
class Translation {
  Translation(
      this.iso31661,
      this.iso6391,
      this.name,
      this.englishName,
      this.data,
      );

  final String iso31661;
  final String iso6391;
  final String name;
  final String englishName;
  final TranslationData data;
}
