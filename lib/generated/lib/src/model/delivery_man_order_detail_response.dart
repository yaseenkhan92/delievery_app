//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/delivery_man_order_detail.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_order_detail_response.g.dart';

/// DeliveryManOrderDetailResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [data] 
@BuiltValue()
abstract class DeliveryManOrderDetailResponse implements Built<DeliveryManOrderDetailResponse, DeliveryManOrderDetailResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  @BuiltValueField(wireName: r'data')
  DeliveryManOrderDetail? get data;

  DeliveryManOrderDetailResponse._();

  factory DeliveryManOrderDetailResponse([void updates(DeliveryManOrderDetailResponseBuilder b)]) = _$DeliveryManOrderDetailResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManOrderDetailResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManOrderDetailResponse> get serializer => _$DeliveryManOrderDetailResponseSerializer();
}

class _$DeliveryManOrderDetailResponseSerializer implements PrimitiveSerializer<DeliveryManOrderDetailResponse> {
  @override
  final Iterable<Type> types = const [DeliveryManOrderDetailResponse, _$DeliveryManOrderDetailResponse];

  @override
  final String wireName = r'DeliveryManOrderDetailResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManOrderDetailResponse object, {
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
        specifiedType: const FullType(DeliveryManOrderDetail),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManOrderDetailResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManOrderDetailResponseBuilder result,
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
            specifiedType: const FullType.nullable(DeliveryManOrderDetail),
          ) as DeliveryManOrderDetail?;
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
  DeliveryManOrderDetailResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManOrderDetailResponseBuilder();
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


