//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_guest_session_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_guest_session_response.g.dart';

/// ConsumerGuestSessionResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [guestId] - Duplicate of `data.guest_id` for legacy PHP-style clients
/// * [data] 
@BuiltValue()
abstract class ConsumerGuestSessionResponse implements Built<ConsumerGuestSessionResponse, ConsumerGuestSessionResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  /// Duplicate of `data.guest_id` for legacy PHP-style clients
  @BuiltValueField(wireName: r'guest_id')
  String? get guestId;

  @BuiltValueField(wireName: r'data')
  ConsumerGuestSessionData? get data;

  ConsumerGuestSessionResponse._();

  factory ConsumerGuestSessionResponse([void updates(ConsumerGuestSessionResponseBuilder b)]) = _$ConsumerGuestSessionResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerGuestSessionResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerGuestSessionResponse> get serializer => _$ConsumerGuestSessionResponseSerializer();
}

class _$ConsumerGuestSessionResponseSerializer implements PrimitiveSerializer<ConsumerGuestSessionResponse> {
  @override
  final Iterable<Type> types = const [ConsumerGuestSessionResponse, _$ConsumerGuestSessionResponse];

  @override
  final String wireName = r'ConsumerGuestSessionResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerGuestSessionResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.msg != null) {
      yield r'msg';
      yield serializers.serialize(
        object.msg,
        specifiedType: const FullType(String),
      );
    }
    if (object.guestId != null) {
      yield r'guest_id';
      yield serializers.serialize(
        object.guestId,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(ConsumerGuestSessionData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerGuestSessionResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerGuestSessionResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'msg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.msg = valueDes;
          break;
        case r'guest_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.guestId = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerGuestSessionData),
          ) as ConsumerGuestSessionData?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerGuestSessionResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerGuestSessionResponseBuilder();
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


