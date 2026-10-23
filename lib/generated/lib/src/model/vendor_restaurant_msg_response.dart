//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_restaurant_msg_response.g.dart';

/// VendorRestaurantMsgResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
@BuiltValue()
abstract class VendorRestaurantMsgResponse implements Built<VendorRestaurantMsgResponse, VendorRestaurantMsgResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  VendorRestaurantMsgResponse._();

  factory VendorRestaurantMsgResponse([void updates(VendorRestaurantMsgResponseBuilder b)]) = _$VendorRestaurantMsgResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRestaurantMsgResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRestaurantMsgResponse> get serializer => _$VendorRestaurantMsgResponseSerializer();
}

class _$VendorRestaurantMsgResponseSerializer implements PrimitiveSerializer<VendorRestaurantMsgResponse> {
  @override
  final Iterable<Type> types = const [VendorRestaurantMsgResponse, _$VendorRestaurantMsgResponse];

  @override
  final String wireName = r'VendorRestaurantMsgResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRestaurantMsgResponse object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRestaurantMsgResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRestaurantMsgResponseBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorRestaurantMsgResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRestaurantMsgResponseBuilder();
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


