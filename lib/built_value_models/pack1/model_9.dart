import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:json_generator_test/built_value_models/pack1/model_1.dart';
import 'package:json_generator_test/built_value_models/pack1/model_2.dart';
import 'package:json_generator_test/built_value_models/pack1/model_3.dart';
import 'package:json_generator_test/built_value_models/pack1/model_4.dart';
import 'package:json_generator_test/built_value_models/pack1/model_5.dart';
import 'package:json_generator_test/built_value_models/pack1/model_6.dart';
import 'package:json_generator_test/built_value_models/pack1/model_7.dart';
import 'package:json_generator_test/built_value_models/pack1/model_8.dart';
import 'package:json_generator_test/built_value_models/pack1/model_9.dart';
import 'package:json_generator_test/built_value_models/pack1/model_10.dart';

part 'model_9.g.dart';

abstract class Model9 implements Built<Model9, Model9Builder> {
  Model9._();

  factory Model9([Function(Model9Builder b) updates]) = _$Model9;

  static Serializer<Model9> get serializer => _$model9Serializer;

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
