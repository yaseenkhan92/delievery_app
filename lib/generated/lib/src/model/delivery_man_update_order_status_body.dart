//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_update_order_status_body.g.dart';

/// DeliveryManUpdateOrderStatusBody
///
/// Properties:
/// * [status] 
/// * [reason] - Required when status is canceled
@BuiltValue()
abstract class DeliveryManUpdateOrderStatusBody implements Built<DeliveryManUpdateOrderStatusBody, DeliveryManUpdateOrderStatusBodyBuilder> {
  @BuiltValueField(wireName: r'status')
  DeliveryManUpdateOrderStatusBodyStatusEnum get status;
  // enum statusEnum {  confirmed,  canceled,  picked_up,  delivered,  handover,  };

  /// Required when status is canceled
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  DeliveryManUpdateOrderStatusBody._();

  factory DeliveryManUpdateOrderStatusBody([void updates(DeliveryManUpdateOrderStatusBodyBuilder b)]) = _$DeliveryManUpdateOrderStatusBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManUpdateOrderStatusBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManUpdateOrderStatusBody> get serializer => _$DeliveryManUpdateOrderStatusBodySerializer();
}

class _$DeliveryManUpdateOrderStatusBodySerializer implements PrimitiveSerializer<DeliveryManUpdateOrderStatusBody> {
  @override
  final Iterable<Type> types = const [DeliveryManUpdateOrderStatusBody, _$DeliveryManUpdateOrderStatusBody];

  @override
  final String wireName = r'DeliveryManUpdateOrderStatusBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManUpdateOrderStatusBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DeliveryManUpdateOrderStatusBodyStatusEnum),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManUpdateOrderStatusBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManUpdateOrderStatusBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeliveryManUpdateOrderStatusBodyStatusEnum),
          ) as DeliveryManUpdateOrderStatusBodyStatusEnum;
          result.status = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManUpdateOrderStatusBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManUpdateOrderStatusBodyBuilder();
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


class DeliveryManUpdateOrderStatusBodyStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'confirmed')
  static const DeliveryManUpdateOrderStatusBodyStatusEnum confirmed = _$deliveryManUpdateOrderStatusBodyStatusEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'canceled')
  static const DeliveryManUpdateOrderStatusBodyStatusEnum canceled = _$deliveryManUpdateOrderStatusBodyStatusEnum_canceled;
  @BuiltValueEnumConst(wireName: r'picked_up')
  static const DeliveryManUpdateOrderStatusBodyStatusEnum pickedUp = _$deliveryManUpdateOrderStatusBodyStatusEnum_pickedUp;
  @BuiltValueEnumConst(wireName: r'delivered')
  static const DeliveryManUpdateOrderStatusBodyStatusEnum delivered = _$deliveryManUpdateOrderStatusBodyStatusEnum_delivered;
  @BuiltValueEnumConst(wireName: r'handover')
  static const DeliveryManUpdateOrderStatusBodyStatusEnum handover = _$deliveryManUpdateOrderStatusBodyStatusEnum_handover;

  static Serializer<DeliveryManUpdateOrderStatusBodyStatusEnum> get serializer => _$deliveryManUpdateOrderStatusBodyStatusEnumSerializer;

  const DeliveryManUpdateOrderStatusBodyStatusEnum._(String name): super(name);

  static BuiltSet<DeliveryManUpdateOrderStatusBodyStatusEnum> get values => _$deliveryManUpdateOrderStatusBodyStatusEnumValues;
  static DeliveryManUpdateOrderStatusBodyStatusEnum valueOf(String name) => _$deliveryManUpdateOrderStatusBodyStatusEnumValueOf(name);
}

