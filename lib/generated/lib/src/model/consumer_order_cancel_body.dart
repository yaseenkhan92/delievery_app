//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_order_cancel_body_order_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_order_cancel_body.g.dart';

/// ConsumerOrderCancelBody
///
/// Properties:
/// * [orderId] 
/// * [reason] 
/// * [guestId] - Guest user id when not using JWT
/// * [isGuest] 
@BuiltValue()
abstract class ConsumerOrderCancelBody implements Built<ConsumerOrderCancelBody, ConsumerOrderCancelBodyBuilder> {
  @BuiltValueField(wireName: r'order_id')
  ConsumerOrderCancelBodyOrderId get orderId;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  /// Guest user id when not using JWT
  @BuiltValueField(wireName: r'guest_id')
  int? get guestId;

  @BuiltValueField(wireName: r'is_guest')
  bool? get isGuest;

  ConsumerOrderCancelBody._();

  factory ConsumerOrderCancelBody([void updates(ConsumerOrderCancelBodyBuilder b)]) = _$ConsumerOrderCancelBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerOrderCancelBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerOrderCancelBody> get serializer => _$ConsumerOrderCancelBodySerializer();
}

class _$ConsumerOrderCancelBodySerializer implements PrimitiveSerializer<ConsumerOrderCancelBody> {
  @override
  final Iterable<Type> types = const [ConsumerOrderCancelBody, _$ConsumerOrderCancelBody];

  @override
  final String wireName = r'ConsumerOrderCancelBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerOrderCancelBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'order_id';
    yield serializers.serialize(
      object.orderId,
      specifiedType: const FullType(ConsumerOrderCancelBodyOrderId),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    if (object.guestId != null) {
      yield r'guest_id';
      yield serializers.serialize(
        object.guestId,
        specifiedType: const FullType(int),
      );
    }
    if (object.isGuest != null) {
      yield r'is_guest';
      yield serializers.serialize(
        object.isGuest,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerOrderCancelBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerOrderCancelBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ConsumerOrderCancelBodyOrderId),
          ) as ConsumerOrderCancelBodyOrderId;
          result.orderId.replace(valueDes);
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'guest_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.guestId = valueDes;
          break;
        case r'is_guest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isGuest = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerOrderCancelBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerOrderCancelBodyBuilder();
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


