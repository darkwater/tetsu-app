import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry/ferry.dart';

import '__generated__/schema.schema.gql.dart' show possibleTypesMap;

final link = HttpLink("https://graphql.anilist.co/");
final cache = Cache(possibleTypes: possibleTypesMap);
final client = Client(link: link, cache: cache);
