import 'backdrop.dart';
import 'package:json_annotation/json_annotation.dart';

part 'collection_images.g.dart';

@JsonSerializable()
class CollectionImages {
  CollectionImages(
    this.id,
    this.backdrops,
    this.posters,
  );

  final int id;
  final List<Backdrop> backdrops;
  final List<Backdrop> posters;
  factory CollectionImages.fromJson(Map<String, dynamic> json) => _$CollectionImagesFromJson(json);
}
