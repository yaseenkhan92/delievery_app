//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/delivery_man_order_status_update_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_order_status_update_response.g.dart';

/// DeliveryManOrderStatusUpdateResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [data] 
@BuiltValue()
abstract class DeliveryManOrderStatusUpdateResponse implements Built<DeliveryManOrderStatusUpdateResponse, DeliveryManOrderStatusUpdateResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  @BuiltValueField(wireName: r'data')
  DeliveryManOrderStatusUpdateResponseData? get data;

  DeliveryManOrderStatusUpdateResponse._();

  factory DeliveryManOrderStatusUpdateResponse([void updates(DeliveryManOrderStatusUpdateResponseBuilder b)]) = _$DeliveryManOrderStatusUpdateResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManOrderStatusUpdateResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManOrderStatusUpdateResponse> get serializer => _$DeliveryManOrderStatusUpdateResponseSerializer();
}

class _$DeliveryManOrderStatusUpdateResponseSerializer implements PrimitiveSerializer<DeliveryManOrderStatusUpdateResponse> {
  @override
  final Iterable<Type> types = const [DeliveryManOrderStatusUpdateResponse, _$DeliveryManOrderStatusUpdateResponse];

  @override
  final String wireName = r'DeliveryManOrderStatusUpdateResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManOrderStatusUpdateResponse object, {
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
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(DeliveryManOrderStatusUpdateResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManOrderStatusUpdateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManOrderStatusUpdateResponseBuilder result,
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
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DeliveryManOrderStatusUpdateResponseData),
          ) as DeliveryManOrderStatusUpdateResponseData?;
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
  DeliveryManOrderStatusUpdateResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManOrderStatusUpdateResponseBuilder();
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


