// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tetsu_app/apis/anichart/__generated__/schema.schema.gql.dart'
    as _i1;
import 'package:tetsu_app/apis/anichart/__generated__/serializers.gql.dart'
    as _i2;

part 'airing.var.gql.g.dart';

abstract class GAlAiringVars
    implements Built<GAlAiringVars, GAlAiringVarsBuilder> {
  GAlAiringVars._();

  factory GAlAiringVars([Function(GAlAiringVarsBuilder b) updates]) =
      _$GAlAiringVars;

  int? get page;
  int? get perPage;
  _i1.GMediaSeason? get season;
  int? get seasonYear;
  static Serializer<GAlAiringVars> get serializer => _$gAlAiringVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAlAiringVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAlAiringVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAlAiringVars.serializer,
        json,
      );
}
