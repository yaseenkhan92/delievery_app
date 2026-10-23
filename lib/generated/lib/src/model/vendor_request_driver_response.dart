//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/vendor_request_driver_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_request_driver_response.g.dart';

/// VendorRequestDriverResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [data] 
@BuiltValue()
abstract class VendorRequestDriverResponse implements Built<VendorRequestDriverResponse, VendorRequestDriverResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  @BuiltValueField(wireName: r'data')
  VendorRequestDriverResponseData? get data;

  VendorRequestDriverResponse._();

  factory VendorRequestDriverResponse([void updates(VendorRequestDriverResponseBuilder b)]) = _$VendorRequestDriverResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRequestDriverResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRequestDriverResponse> get serializer => _$VendorRequestDriverResponseSerializer();
}

class _$VendorRequestDriverResponseSerializer implements PrimitiveSerializer<VendorRequestDriverResponse> {
  @override
  final Iterable<Type> types = const [VendorRequestDriverResponse, _$VendorRequestDriverResponse];

  @override
  final String wireName = r'VendorRequestDriverResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRequestDriverResponse object, {
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
        specifiedType: const FullType(VendorRequestDriverResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRequestDriverResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRequestDriverResponseBuilder result,
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
            specifiedType: const FullType.nullable(VendorRequestDriverResponseData),
          ) as VendorRequestDriverResponseData?;
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
  VendorRequestDriverResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRequestDriverResponseBuilder();
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


