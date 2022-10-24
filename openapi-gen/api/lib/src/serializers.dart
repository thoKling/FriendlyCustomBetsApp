//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:custom_bet_api/src/date_serializer.dart';
import 'package:custom_bet_api/src/model/date.dart';

import 'package:custom_bet_api/src/model/add_game_to_tournament_request.dart';
import 'package:custom_bet_api/src/model/bet.dart';
import 'package:custom_bet_api/src/model/game.dart';
import 'package:custom_bet_api/src/model/my_tournament.dart';
import 'package:custom_bet_api/src/model/tournament.dart';
import 'package:custom_bet_api/src/model/user.dart';

part 'serializers.g.dart';

@SerializersFor([
  AddGameToTournamentRequest,
  Bet,
  Game,
  MyTournament,
  Tournament,
  User,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MyTournament)]),
        () => ListBuilder<MyTournament>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
