//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_restaurants_id_foods_get200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_restaurants_id_foods_get200_response.g.dart';

/// ConsumerRestaurantsIdFoodsGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class ConsumerRestaurantsIdFoodsGet200Response implements Built<ConsumerRestaurantsIdFoodsGet200Response, ConsumerRestaurantsIdFoodsGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  ConsumerRestaurantsIdFoodsGet200ResponseData? get data;

  ConsumerRestaurantsIdFoodsGet200Response._();

  factory ConsumerRestaurantsIdFoodsGet200Response([void updates(ConsumerRestaurantsIdFoodsGet200ResponseBuilder b)]) = _$ConsumerRestaurantsIdFoodsGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerRestaurantsIdFoodsGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerRestaurantsIdFoodsGet200Response> get serializer => _$ConsumerRestaurantsIdFoodsGet200ResponseSerializer();
}

class _$ConsumerRestaurantsIdFoodsGet200ResponseSerializer implements PrimitiveSerializer<ConsumerRestaurantsIdFoodsGet200Response> {
  @override
  final Iterable<Type> types = const [ConsumerRestaurantsIdFoodsGet200Response, _$ConsumerRestaurantsIdFoodsGet200Response];

  @override
  final String wireName = r'ConsumerRestaurantsIdFoodsGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerRestaurantsIdFoodsGet200Response object, {
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
        specifiedType: const FullType(ConsumerRestaurantsIdFoodsGet200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerRestaurantsIdFoodsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerRestaurantsIdFoodsGet200ResponseBuilder result,
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
            specifiedType: const FullType.nullable(ConsumerRestaurantsIdFoodsGet200ResponseData),
          ) as ConsumerRestaurantsIdFoodsGet200ResponseData?;
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
  ConsumerRestaurantsIdFoodsGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerRestaurantsIdFoodsGet200ResponseBuilder();
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


