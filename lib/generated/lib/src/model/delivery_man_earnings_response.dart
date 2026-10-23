//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/delivery_man_earnings_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_earnings_response.g.dart';

/// DeliveryManEarningsResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [data] 
@BuiltValue()
abstract class DeliveryManEarningsResponse implements Built<DeliveryManEarningsResponse, DeliveryManEarningsResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  @BuiltValueField(wireName: r'data')
  DeliveryManEarningsResponseData? get data;

  DeliveryManEarningsResponse._();

  factory DeliveryManEarningsResponse([void updates(DeliveryManEarningsResponseBuilder b)]) = _$DeliveryManEarningsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManEarningsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManEarningsResponse> get serializer => _$DeliveryManEarningsResponseSerializer();
}

class _$DeliveryManEarningsResponseSerializer implements PrimitiveSerializer<DeliveryManEarningsResponse> {
  @override
  final Iterable<Type> types = const [DeliveryManEarningsResponse, _$DeliveryManEarningsResponse];

  @override
  final String wireName = r'DeliveryManEarningsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManEarningsResponse object, {
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
        specifiedType: const FullType(DeliveryManEarningsResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManEarningsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManEarningsResponseBuilder result,
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
            specifiedType: const FullType.nullable(DeliveryManEarningsResponseData),
          ) as DeliveryManEarningsResponseData?;
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
  DeliveryManEarningsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManEarningsResponseBuilder();
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


