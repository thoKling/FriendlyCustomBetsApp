//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:custom_bet_api/src/model/game.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_game_to_tournament_request.g.dart';

/// AddGameToTournamentRequest
///
/// Properties:
/// * [game] 
/// * [tournamentId] 
@BuiltValue()
abstract class AddGameToTournamentRequest implements Built<AddGameToTournamentRequest, AddGameToTournamentRequestBuilder> {
  @BuiltValueField(wireName: r'game')
  Game get game;

  @BuiltValueField(wireName: r'tournamentId')
  int get tournamentId;

  AddGameToTournamentRequest._();

  factory AddGameToTournamentRequest([void updates(AddGameToTournamentRequestBuilder b)]) = _$AddGameToTournamentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddGameToTournamentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddGameToTournamentRequest> get serializer => _$AddGameToTournamentRequestSerializer();
}

class _$AddGameToTournamentRequestSerializer implements PrimitiveSerializer<AddGameToTournamentRequest> {
  @override
  final Iterable<Type> types = const [AddGameToTournamentRequest, _$AddGameToTournamentRequest];

  @override
  final String wireName = r'AddGameToTournamentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddGameToTournamentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'game';
    yield serializers.serialize(
      object.game,
      specifiedType: const FullType(Game),
    );
    yield r'tournamentId';
    yield serializers.serialize(
      object.tournamentId,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AddGameToTournamentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddGameToTournamentRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'game':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Game),
          ) as Game;
          result.game.replace(valueDes);
          break;
        case r'tournamentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tournamentId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddGameToTournamentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddGameToTournamentRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

