//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/vendor_order_detail.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_order_detail_response.g.dart';

/// VendorOrderDetailResponse
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class VendorOrderDetailResponse implements Built<VendorOrderDetailResponse, VendorOrderDetailResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  VendorOrderDetail? get data;

  VendorOrderDetailResponse._();

  factory VendorOrderDetailResponse([void updates(VendorOrderDetailResponseBuilder b)]) = _$VendorOrderDetailResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorOrderDetailResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorOrderDetailResponse> get serializer => _$VendorOrderDetailResponseSerializer();
}

class _$VendorOrderDetailResponseSerializer implements PrimitiveSerializer<VendorOrderDetailResponse> {
  @override
  final Iterable<Type> types = const [VendorOrderDetailResponse, _$VendorOrderDetailResponse];

  @override
  final String wireName = r'VendorOrderDetailResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorOrderDetailResponse object, {
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
        specifiedType: const FullType(VendorOrderDetail),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorOrderDetailResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorOrderDetailResponseBuilder result,
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
            specifiedType: const FullType.nullable(VendorOrderDetail),
          ) as VendorOrderDetail?;
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
  VendorOrderDetailResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorOrderDetailResponseBuilder();
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


