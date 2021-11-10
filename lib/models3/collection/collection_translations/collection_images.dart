import 'package:json_annotation/json_annotation.dart';
import 'collection_translation.dart';

part 'collection_images.g.dart';

@JsonSerializable()
class CollectionImages {
  CollectionImages(
    this.id,
    this.translations,
  );

  final int id;
  final List<Translation> translations;
  factory CollectionImages.fromJson(Map<String, dynamic> json) => _$CollectionImagesFromJson(json);
}
