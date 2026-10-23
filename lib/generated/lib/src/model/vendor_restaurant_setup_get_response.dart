//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/vendor_restaurant_setup_payload.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_restaurant_setup_get_response.g.dart';

/// VendorRestaurantSetupGetResponse
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class VendorRestaurantSetupGetResponse implements Built<VendorRestaurantSetupGetResponse, VendorRestaurantSetupGetResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  VendorRestaurantSetupPayload? get data;

  VendorRestaurantSetupGetResponse._();

  factory VendorRestaurantSetupGetResponse([void updates(VendorRestaurantSetupGetResponseBuilder b)]) = _$VendorRestaurantSetupGetResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorRestaurantSetupGetResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorRestaurantSetupGetResponse> get serializer => _$VendorRestaurantSetupGetResponseSerializer();
}

class _$VendorRestaurantSetupGetResponseSerializer implements PrimitiveSerializer<VendorRestaurantSetupGetResponse> {
  @override
  final Iterable<Type> types = const [VendorRestaurantSetupGetResponse, _$VendorRestaurantSetupGetResponse];

  @override
  final String wireName = r'VendorRestaurantSetupGetResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorRestaurantSetupGetResponse object, {
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
        specifiedType: const FullType(VendorRestaurantSetupPayload),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorRestaurantSetupGetResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorRestaurantSetupGetResponseBuilder result,
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
            specifiedType: const FullType.nullable(VendorRestaurantSetupPayload),
          ) as VendorRestaurantSetupPayload?;
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
  VendorRestaurantSetupGetResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorRestaurantSetupGetResponseBuilder();
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


