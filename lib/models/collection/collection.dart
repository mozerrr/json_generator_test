import 'collection_part.dart';
import 'package:json_annotation/json_annotation.dart';

part 'collection.g.dart';

@JsonSerializable()
class Collection {
  Collection(
    this.id,
    this.name,
    this.overview,
    this.posterPath,
    this.backdropPath,
    this.parts,
  );

  final int id;
  final String name;
  final String overview;
  final dynamic posterPath;
  final String backdropPath;
  final List<CollectionPart> parts;
}
