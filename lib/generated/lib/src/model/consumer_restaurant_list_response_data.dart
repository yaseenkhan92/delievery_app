//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/consumer_restaurant_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_restaurant_list_response_data.g.dart';

/// ConsumerRestaurantListResponseData
///
/// Properties:
/// * [totalSize] - Total matching restaurants (all pages)
/// * [limit] - Page size from query limit
/// * [offset] - Current page number (1-based), from query page
/// * [restaurants] 
@BuiltValue()
abstract class ConsumerRestaurantListResponseData implements Built<ConsumerRestaurantListResponseData, ConsumerRestaurantListResponseDataBuilder> {
  /// Total matching restaurants (all pages)
  @BuiltValueField(wireName: r'total_size')
  int get totalSize;

  /// Page size from query limit
  @BuiltValueField(wireName: r'limit')
  int get limit;

  /// Current page number (1-based), from query page
  @BuiltValueField(wireName: r'offset')
  int get offset;

  @BuiltValueField(wireName: r'restaurants')
  BuiltList<ConsumerRestaurantSummary> get restaurants;

  ConsumerRestaurantListResponseData._();

  factory ConsumerRestaurantListResponseData([void updates(ConsumerRestaurantListResponseDataBuilder b)]) = _$ConsumerRestaurantListResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerRestaurantListResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerRestaurantListResponseData> get serializer => _$ConsumerRestaurantListResponseDataSerializer();
}

class _$ConsumerRestaurantListResponseDataSerializer implements PrimitiveSerializer<ConsumerRestaurantListResponseData> {
  @override
  final Iterable<Type> types = const [ConsumerRestaurantListResponseData, _$ConsumerRestaurantListResponseData];

  @override
  final String wireName = r'ConsumerRestaurantListResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerRestaurantListResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total_size';
    yield serializers.serialize(
      object.totalSize,
      specifiedType: const FullType(int),
    );
    yield r'limit';
    yield serializers.serialize(
      object.limit,
      specifiedType: const FullType(int),
    );
    yield r'offset';
    yield serializers.serialize(
      object.offset,
      specifiedType: const FullType(int),
    );
    yield r'restaurants';
    yield serializers.serialize(
      object.restaurants,
      specifiedType: const FullType(BuiltList, [FullType(ConsumerRestaurantSummary)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerRestaurantListResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerRestaurantListResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalSize = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.limit = valueDes;
          break;
        case r'offset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.offset = valueDes;
          break;
        case r'restaurants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ConsumerRestaurantSummary)]),
          ) as BuiltList<ConsumerRestaurantSummary>;
          result.restaurants.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerRestaurantListResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerRestaurantListResponseDataBuilder();
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


