//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/vendor_order_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_order_status_update_response.g.dart';

/// VendorOrderStatusUpdateResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [data] 
@BuiltValue()
abstract class VendorOrderStatusUpdateResponse implements Built<VendorOrderStatusUpdateResponse, VendorOrderStatusUpdateResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  @BuiltValueField(wireName: r'data')
  VendorOrderSummary? get data;

  VendorOrderStatusUpdateResponse._();

  factory VendorOrderStatusUpdateResponse([void updates(VendorOrderStatusUpdateResponseBuilder b)]) = _$VendorOrderStatusUpdateResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorOrderStatusUpdateResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorOrderStatusUpdateResponse> get serializer => _$VendorOrderStatusUpdateResponseSerializer();
}

class _$VendorOrderStatusUpdateResponseSerializer implements PrimitiveSerializer<VendorOrderStatusUpdateResponse> {
  @override
  final Iterable<Type> types = const [VendorOrderStatusUpdateResponse, _$VendorOrderStatusUpdateResponse];

  @override
  final String wireName = r'VendorOrderStatusUpdateResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorOrderStatusUpdateResponse object, {
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
        specifiedType: const FullType(VendorOrderSummary),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorOrderStatusUpdateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorOrderStatusUpdateResponseBuilder result,
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
            specifiedType: const FullType.nullable(VendorOrderSummary),
          ) as VendorOrderSummary?;
          if (valueDes == null) continue;
          result.data = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorOrderStatusUpdateResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorOrderStatusUpdateResponseBuilder();
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


