//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/vendor_pos_order_history_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_pos_order_history_response.g.dart';

/// VendorPosOrderHistoryResponse
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class VendorPosOrderHistoryResponse implements Built<VendorPosOrderHistoryResponse, VendorPosOrderHistoryResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  VendorPosOrderHistoryResponseData? get data;

  VendorPosOrderHistoryResponse._();

  factory VendorPosOrderHistoryResponse([void updates(VendorPosOrderHistoryResponseBuilder b)]) = _$VendorPosOrderHistoryResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorPosOrderHistoryResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorPosOrderHistoryResponse> get serializer => _$VendorPosOrderHistoryResponseSerializer();
}

class _$VendorPosOrderHistoryResponseSerializer implements PrimitiveSerializer<VendorPosOrderHistoryResponse> {
  @override
  final Iterable<Type> types = const [VendorPosOrderHistoryResponse, _$VendorPosOrderHistoryResponse];

  @override
  final String wireName = r'VendorPosOrderHistoryResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorPosOrderHistoryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(VendorPosOrderHistoryResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorPosOrderHistoryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorPosOrderHistoryResponseBuilder result,
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
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(VendorPosOrderHistoryResponseData),
          ) as VendorPosOrderHistoryResponseData?;
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
  VendorPosOrderHistoryResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorPosOrderHistoryResponseBuilder();
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


