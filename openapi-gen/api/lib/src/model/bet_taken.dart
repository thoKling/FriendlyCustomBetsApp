//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:custom_bet_api/src/model/bet.dart';
import 'package:custom_bet_api/src/model/user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bet_taken.g.dart';

/// BetTaken
///
/// Properties:
/// * [id] 
/// * [user] 
/// * [bet] 
/// * [tokensAmount] 
@BuiltValue()
abstract class BetTaken implements Built<BetTaken, BetTakenBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'user')
  User get user;

  @BuiltValueField(wireName: r'bet')
  Bet get bet;

  @BuiltValueField(wireName: r'tokensAmount')
  double get tokensAmount;

  BetTaken._();

  factory BetTaken([void updates(BetTakenBuilder b)]) = _$BetTaken;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BetTakenBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BetTaken> get serializer => _$BetTakenSerializer();
}

class _$BetTakenSerializer implements PrimitiveSerializer<BetTaken> {
  @override
  final Iterable<Type> types = const [BetTaken, _$BetTaken];

  @override
  final String wireName = r'BetTaken';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BetTaken object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    yield r'user';
    yield serializers.serialize(
      object.user,
      specifiedType: const FullType(User),
    );
    yield r'bet';
    yield serializers.serialize(
      object.bet,
      specifiedType: const FullType(Bet),
    );
    yield r'tokensAmount';
    yield serializers.serialize(
      object.tokensAmount,
      specifiedType: const FullType(double),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BetTaken object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BetTakenBuilder result,
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
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.user.replace(valueDes);
          break;
        case r'bet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Bet),
          ) as Bet;
          result.bet.replace(valueDes);
          break;
        case r'tokensAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.tokensAmount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BetTaken deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BetTakenBuilder();
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

