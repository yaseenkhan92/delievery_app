//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_restaurant_list_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_restaurant_list_response.g.dart';

/// ConsumerRestaurantListResponse
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class ConsumerRestaurantListResponse implements Built<ConsumerRestaurantListResponse, ConsumerRestaurantListResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool get status;

  @BuiltValueField(wireName: r'data')
  ConsumerRestaurantListResponseData get data;

  ConsumerRestaurantListResponse._();

  factory ConsumerRestaurantListResponse([void updates(ConsumerRestaurantListResponseBuilder b)]) = _$ConsumerRestaurantListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerRestaurantListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerRestaurantListResponse> get serializer => _$ConsumerRestaurantListResponseSerializer();
}

class _$ConsumerRestaurantListResponseSerializer implements PrimitiveSerializer<ConsumerRestaurantListResponse> {
  @override
  final Iterable<Type> types = const [ConsumerRestaurantListResponse, _$ConsumerRestaurantListResponse];

  @override
  final String wireName = r'ConsumerRestaurantListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerRestaurantListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(bool),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(ConsumerRestaurantListResponseData),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerRestaurantListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerRestaurantListResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.status = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ConsumerRestaurantListResponseData),
          ) as ConsumerRestaurantListResponseData;
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
  ConsumerRestaurantListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerRestaurantListResponseBuilder();
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


