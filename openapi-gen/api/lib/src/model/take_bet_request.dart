//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'take_bet_request.g.dart';

/// TakeBetRequest
///
/// Properties:
/// * [tokensAmount] 
@BuiltValue()
abstract class TakeBetRequest implements Built<TakeBetRequest, TakeBetRequestBuilder> {
  @BuiltValueField(wireName: r'tokensAmount')
  double get tokensAmount;

  TakeBetRequest._();

  factory TakeBetRequest([void updates(TakeBetRequestBuilder b)]) = _$TakeBetRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TakeBetRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TakeBetRequest> get serializer => _$TakeBetRequestSerializer();
}

class _$TakeBetRequestSerializer implements PrimitiveSerializer<TakeBetRequest> {
  @override
  final Iterable<Type> types = const [TakeBetRequest, _$TakeBetRequest];

  @override
  final String wireName = r'TakeBetRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TakeBetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tokensAmount';
    yield serializers.serialize(
      object.tokensAmount,
      specifiedType: const FullType(double),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TakeBetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TakeBetRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  TakeBetRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TakeBetRequestBuilder();
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

