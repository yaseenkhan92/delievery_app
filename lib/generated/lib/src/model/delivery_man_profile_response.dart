//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/delivery_man_profile_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_profile_response.g.dart';

/// DeliveryManProfileResponse
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class DeliveryManProfileResponse implements Built<DeliveryManProfileResponse, DeliveryManProfileResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  DeliveryManProfileData? get data;

  DeliveryManProfileResponse._();

  factory DeliveryManProfileResponse([void updates(DeliveryManProfileResponseBuilder b)]) = _$DeliveryManProfileResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManProfileResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManProfileResponse> get serializer => _$DeliveryManProfileResponseSerializer();
}

class _$DeliveryManProfileResponseSerializer implements PrimitiveSerializer<DeliveryManProfileResponse> {
  @override
  final Iterable<Type> types = const [DeliveryManProfileResponse, _$DeliveryManProfileResponse];

  @override
  final String wireName = r'DeliveryManProfileResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManProfileResponse object, {
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
        specifiedType: const FullType(DeliveryManProfileData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManProfileResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManProfileResponseBuilder result,
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
            specifiedType: const FullType.nullable(DeliveryManProfileData),
          ) as DeliveryManProfileData?;
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
  DeliveryManProfileResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManProfileResponseBuilder();
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


