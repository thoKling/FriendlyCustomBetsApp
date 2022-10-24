//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:custom_bet_api/src/model/game.dart';
import 'package:built_collection/built_collection.dart';
import 'package:custom_bet_api/src/model/user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tournament.g.dart';

/// Tournament
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [games] 
/// * [owner] 
/// * [participants] 
/// * [startingTokens] 
@BuiltValue()
abstract class Tournament implements Built<Tournament, TournamentBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'games')
  BuiltList<Game> get games;

  @BuiltValueField(wireName: r'owner')
  User get owner;

  @BuiltValueField(wireName: r'participants')
  BuiltList<User> get participants;

  @BuiltValueField(wireName: r'startingTokens')
  double get startingTokens;

  Tournament._();

  factory Tournament([void updates(TournamentBuilder b)]) = _$Tournament;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TournamentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Tournament> get serializer => _$TournamentSerializer();
}

class _$TournamentSerializer implements PrimitiveSerializer<Tournament> {
  @override
  final Iterable<Type> types = const [Tournament, _$Tournament];

  @override
  final String wireName = r'Tournament';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Tournament object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'games';
    yield serializers.serialize(
      object.games,
      specifiedType: const FullType(BuiltList, [FullType(Game)]),
    );
    yield r'owner';
    yield serializers.serialize(
      object.owner,
      specifiedType: const FullType(User),
    );
    yield r'participants';
    yield serializers.serialize(
      object.participants,
      specifiedType: const FullType(BuiltList, [FullType(User)]),
    );
    yield r'startingTokens';
    yield serializers.serialize(
      object.startingTokens,
      specifiedType: const FullType(double),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Tournament object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TournamentBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'games':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Game)]),
          ) as BuiltList<Game>;
          result.games.replace(valueDes);
          break;
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.owner.replace(valueDes);
          break;
        case r'participants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(User)]),
          ) as BuiltList<User>;
          result.participants.replace(valueDes);
          break;
        case r'startingTokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.startingTokens = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Tournament deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TournamentBuilder();
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

