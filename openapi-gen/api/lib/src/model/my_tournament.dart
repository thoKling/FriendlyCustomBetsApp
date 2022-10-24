//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:custom_bet_api/src/model/game.dart';
import 'package:built_collection/built_collection.dart';
import 'package:custom_bet_api/src/model/user.dart';
import 'package:custom_bet_api/src/model/tournament.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'my_tournament.g.dart';

/// MyTournament
///
/// Properties:
/// * [tournament] 
/// * [myTokens] 
/// * [id] 
/// * [name] 
/// * [games] 
/// * [owner] 
/// * [participants] 
/// * [startingTokens] 
@BuiltValue()
abstract class MyTournament implements Built<MyTournament, MyTournamentBuilder> {
  @BuiltValueField(wireName: r'tournament')
  Tournament? get tournament;

  @BuiltValueField(wireName: r'myTokens')
  double get myTokens;

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

  MyTournament._();

  factory MyTournament([void updates(MyTournamentBuilder b)]) = _$MyTournament;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MyTournamentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MyTournament> get serializer => _$MyTournamentSerializer();
}

class _$MyTournamentSerializer implements PrimitiveSerializer<MyTournament> {
  @override
  final Iterable<Type> types = const [MyTournament, _$MyTournament];

  @override
  final String wireName = r'MyTournament';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MyTournament object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tournament != null) {
      yield r'tournament';
      yield serializers.serialize(
        object.tournament,
        specifiedType: const FullType(Tournament),
      );
    }
    yield r'myTokens';
    yield serializers.serialize(
      object.myTokens,
      specifiedType: const FullType(double),
    );
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
    MyTournament object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MyTournamentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tournament':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Tournament),
          ) as Tournament;
          result.tournament.replace(valueDes);
          break;
        case r'myTokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.myTokens = valueDes;
          break;
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
  MyTournament deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MyTournamentBuilder();
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

