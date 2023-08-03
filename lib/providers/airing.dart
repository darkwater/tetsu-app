import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tetsu_app/apis/anichart/__generated__/schema.schema.gql.dart';
import 'package:tetsu_app/apis/anichart/client.dart';
import 'package:tetsu_app/apis/anichart/queries/__generated__/airing.data.gql.dart';
import 'package:tetsu_app/apis/anichart/queries/__generated__/airing.req.gql.dart';

part 'airing.g.dart';

@riverpod
Stream<GAlAiringData> airing(Ref ref) {
  final req = GAlAiringReq(
    (b) => b
      ..vars.season = GMediaSeason.SUMMER
      ..vars.seasonYear = 2023
      ..vars.page = 1
      ..vars.perPage = 20,
  );

  return client.request(req).map((event) {
    if (event.hasErrors) {
      if (event.graphqlErrors != null && event.graphqlErrors!.isNotEmpty) {
        throw event.graphqlErrors!;
      }

      if (event.linkException != null) {
        throw event.linkException!;
      }

      throw "Unknown error";
    }

    return event.data!;
  });
}
