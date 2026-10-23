//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_restaurants_specfic_id_get200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_restaurants_specfic_id_get200_response.g.dart';

/// ConsumerRestaurantsSpecficIdGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class ConsumerRestaurantsSpecficIdGet200Response implements Built<ConsumerRestaurantsSpecficIdGet200Response, ConsumerRestaurantsSpecficIdGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  ConsumerRestaurantsSpecficIdGet200ResponseData? get data;

  ConsumerRestaurantsSpecficIdGet200Response._();

  factory ConsumerRestaurantsSpecficIdGet200Response([void updates(ConsumerRestaurantsSpecficIdGet200ResponseBuilder b)]) = _$ConsumerRestaurantsSpecficIdGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerRestaurantsSpecficIdGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerRestaurantsSpecficIdGet200Response> get serializer => _$ConsumerRestaurantsSpecficIdGet200ResponseSerializer();
}

class _$ConsumerRestaurantsSpecficIdGet200ResponseSerializer implements PrimitiveSerializer<ConsumerRestaurantsSpecficIdGet200Response> {
  @override
  final Iterable<Type> types = const [ConsumerRestaurantsSpecficIdGet200Response, _$ConsumerRestaurantsSpecficIdGet200Response];

  @override
  final String wireName = r'ConsumerRestaurantsSpecficIdGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerRestaurantsSpecficIdGet200Response object, {
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
        specifiedType: const FullType(ConsumerRestaurantsSpecficIdGet200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerRestaurantsSpecficIdGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerRestaurantsSpecficIdGet200ResponseBuilder result,
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
            specifiedType: const FullType.nullable(ConsumerRestaurantsSpecficIdGet200ResponseData),
          ) as ConsumerRestaurantsSpecficIdGet200ResponseData?;
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
  ConsumerRestaurantsSpecficIdGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerRestaurantsSpecficIdGet200ResponseBuilder();
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


