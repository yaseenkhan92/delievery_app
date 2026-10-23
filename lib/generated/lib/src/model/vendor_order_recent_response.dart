//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/vendor_order_recent_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_order_recent_response.g.dart';

/// VendorOrderRecentResponse
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class VendorOrderRecentResponse implements Built<VendorOrderRecentResponse, VendorOrderRecentResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  VendorOrderRecentResponseData? get data;

  VendorOrderRecentResponse._();

  factory VendorOrderRecentResponse([void updates(VendorOrderRecentResponseBuilder b)]) = _$VendorOrderRecentResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorOrderRecentResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorOrderRecentResponse> get serializer => _$VendorOrderRecentResponseSerializer();
}

class _$VendorOrderRecentResponseSerializer implements PrimitiveSerializer<VendorOrderRecentResponse> {
  @override
  final Iterable<Type> types = const [VendorOrderRecentResponse, _$VendorOrderRecentResponse];

  @override
  final String wireName = r'VendorOrderRecentResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorOrderRecentResponse object, {
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
        specifiedType: const FullType(VendorOrderRecentResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorOrderRecentResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorOrderRecentResponseBuilder result,
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
            specifiedType: const FullType.nullable(VendorOrderRecentResponseData),
          ) as VendorOrderRecentResponseData?;
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
  VendorOrderRecentResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorOrderRecentResponseBuilder();
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


