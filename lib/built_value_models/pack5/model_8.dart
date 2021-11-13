import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'model_1.dart';
import 'model_2.dart';
import 'model_3.dart';
import 'model_4.dart';
import 'model_5.dart';
import 'model_6.dart';
import 'model_7.dart';
import 'model_8.dart';
import 'model_9.dart';
import 'model_10.dart';

part 'model_8.g.dart';

abstract class Model8 implements Built<Model8, Model8Builder> {
  Model8._();

  factory Model8([Function(Model8Builder b) updates]) = _$Model8;

  static Serializer<Model8> get serializer => _$model8Serializer;

  @BuiltValueField()
  int get intValue;

  @BuiltValueField()
  double get doubleValue;

  @BuiltValueField()
  bool get boolValue;

  @BuiltValueField()
  String get stringValue;

  @BuiltValueField()
  Iterable<String> get values;

  @BuiltValueField()
  Map<String,dynamic> get collection;

  @BuiltValueField()
  Model1 get model1;

  @BuiltValueField()
  Model2 get model2;

  @BuiltValueField()
  Model3 get model3;

  @BuiltValueField()
  Model4 get model4;

  @BuiltValueField()
  Model5 get model5;

  @BuiltValueField()
  Model6 get model6;

  @BuiltValueField()
  Model7 get model7;

  @BuiltValueField()
  Model8 get model8;

  @BuiltValueField()
  Model9 get model9;

  @BuiltValueField()
  Model10 get model10;

}
