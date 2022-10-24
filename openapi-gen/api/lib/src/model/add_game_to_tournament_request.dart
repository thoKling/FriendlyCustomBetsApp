//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_game_to_tournament_request.g.dart';

/// AddGameToTournamentRequest
///
/// Properties:
/// * [tournamentId] 
/// * [gameName] 
@BuiltValue()
abstract class AddGameToTournamentRequest implements Built<AddGameToTournamentRequest, AddGameToTournamentRequestBuilder> {
  @BuiltValueField(wireName: r'tournamentId')
  int? get tournamentId;

  @BuiltValueField(wireName: r'gameName')
  String? get gameName;

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
    if (object.tournamentId != null) {
      yield r'tournamentId';
      yield serializers.serialize(
        object.tournamentId,
        specifiedType: const FullType(int),
      );
    }
    if (object.gameName != null) {
      yield r'gameName';
      yield serializers.serialize(
        object.gameName,
        specifiedType: const FullType(String),
      );
    }
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
        case r'tournamentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tournamentId = valueDes;
          break;
        case r'gameName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gameName = valueDes;
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

