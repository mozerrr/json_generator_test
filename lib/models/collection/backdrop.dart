import 'package:json_annotation/json_annotation.dart';

part 'backdrop.g.dart';

@JsonSerializable()
class Backdrop {
  Backdrop(
    this.aspectRatio,
    this.filePath,
    this.height,
    this.iso6391,
    this.voteAverage,
    this.voteCount,
    this.width,
  );

  final double aspectRatio;
  final String filePath;
  final int height;
  final String iso6391;
  final double voteAverage;
  final int voteCount;
  final int width;
}
