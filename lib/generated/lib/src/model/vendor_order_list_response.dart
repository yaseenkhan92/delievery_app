//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/vendor_order_list_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_order_list_response.g.dart';

/// VendorOrderListResponse
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class VendorOrderListResponse implements Built<VendorOrderListResponse, VendorOrderListResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  VendorOrderListResponseData? get data;

  VendorOrderListResponse._();

  factory VendorOrderListResponse([void updates(VendorOrderListResponseBuilder b)]) = _$VendorOrderListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorOrderListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorOrderListResponse> get serializer => _$VendorOrderListResponseSerializer();
}

class _$VendorOrderListResponseSerializer implements PrimitiveSerializer<VendorOrderListResponse> {
  @override
  final Iterable<Type> types = const [VendorOrderListResponse, _$VendorOrderListResponse];

  @override
  final String wireName = r'VendorOrderListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorOrderListResponse object, {
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
        specifiedType: const FullType(VendorOrderListResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorOrderListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorOrderListResponseBuilder result,
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
            specifiedType: const FullType.nullable(VendorOrderListResponseData),
          ) as VendorOrderListResponseData?;
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
  VendorOrderListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorOrderListResponseBuilder();
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


