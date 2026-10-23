//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_guest_session_data.g.dart';

/// ConsumerGuestSessionData
///
/// Properties:
/// * [guestId] - Guest primary key — save locally; send on login/social sign-in to merge cart
/// * [token] - Guest session JWT (`role: guest`). Use as Bearer on cart APIs until customer logs in
@BuiltValue()
abstract class ConsumerGuestSessionData implements Built<ConsumerGuestSessionData, ConsumerGuestSessionDataBuilder> {
  /// Guest primary key — save locally; send on login/social sign-in to merge cart
  @BuiltValueField(wireName: r'guest_id')
  String get guestId;

  /// Guest session JWT (`role: guest`). Use as Bearer on cart APIs until customer logs in
  @BuiltValueField(wireName: r'token')
  String get token;

  ConsumerGuestSessionData._();

  factory ConsumerGuestSessionData([void updates(ConsumerGuestSessionDataBuilder b)]) = _$ConsumerGuestSessionData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerGuestSessionDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerGuestSessionData> get serializer => _$ConsumerGuestSessionDataSerializer();
}

class _$ConsumerGuestSessionDataSerializer implements PrimitiveSerializer<ConsumerGuestSessionData> {
  @override
  final Iterable<Type> types = const [ConsumerGuestSessionData, _$ConsumerGuestSessionData];

  @override
  final String wireName = r'ConsumerGuestSessionData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerGuestSessionData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'guest_id';
    yield serializers.serialize(
      object.guestId,
      specifiedType: const FullType(String),
    );
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerGuestSessionData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerGuestSessionDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'guest_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.guestId = valueDes;
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerGuestSessionData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerGuestSessionDataBuilder();
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


