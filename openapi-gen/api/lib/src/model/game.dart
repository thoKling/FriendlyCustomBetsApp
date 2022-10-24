//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:custom_bet_api/src/model/bet.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'game.g.dart';

/// Game
///
/// Properties:
/// * [id] 
/// * [bets] 
/// * [name] 
@BuiltValue()
abstract class Game implements Built<Game, GameBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'bets')
  BuiltList<Bet> get bets;

  @BuiltValueField(wireName: r'name')
  String get name;

  Game._();

  factory Game([void updates(GameBuilder b)]) = _$Game;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GameBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Game> get serializer => _$GameSerializer();
}

class _$GameSerializer implements PrimitiveSerializer<Game> {
  @override
  final Iterable<Type> types = const [Game, _$Game];

  @override
  final String wireName = r'Game';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Game object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    yield r'bets';
    yield serializers.serialize(
      object.bets,
      specifiedType: const FullType(BuiltList, [FullType(Bet)]),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Game object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GameBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'bets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Bet)]),
          ) as BuiltList<Bet>;
          result.bets.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Game deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GameBuilder();
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

