//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_order_status_update_response_data.g.dart';

/// DeliveryManOrderStatusUpdateResponseData
///
/// Properties:
/// * [id] 
/// * [orderStatus] 
@BuiltValue()
abstract class DeliveryManOrderStatusUpdateResponseData implements Built<DeliveryManOrderStatusUpdateResponseData, DeliveryManOrderStatusUpdateResponseDataBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'order_status')
  String? get orderStatus;

  DeliveryManOrderStatusUpdateResponseData._();

  factory DeliveryManOrderStatusUpdateResponseData([void updates(DeliveryManOrderStatusUpdateResponseDataBuilder b)]) = _$DeliveryManOrderStatusUpdateResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManOrderStatusUpdateResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManOrderStatusUpdateResponseData> get serializer => _$DeliveryManOrderStatusUpdateResponseDataSerializer();
}

class _$DeliveryManOrderStatusUpdateResponseDataSerializer implements PrimitiveSerializer<DeliveryManOrderStatusUpdateResponseData> {
  @override
  final Iterable<Type> types = const [DeliveryManOrderStatusUpdateResponseData, _$DeliveryManOrderStatusUpdateResponseData];

  @override
  final String wireName = r'DeliveryManOrderStatusUpdateResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManOrderStatusUpdateResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderStatus != null) {
      yield r'order_status';
      yield serializers.serialize(
        object.orderStatus,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManOrderStatusUpdateResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManOrderStatusUpdateResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'order_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderStatus = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManOrderStatusUpdateResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManOrderStatusUpdateResponseDataBuilder();
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


