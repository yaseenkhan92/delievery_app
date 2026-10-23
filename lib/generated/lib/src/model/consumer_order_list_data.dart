//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_order_list_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_order_list_data.g.dart';

/// ConsumerOrderListData
///
/// Properties:
/// * [totalSize] 
/// * [limit] 
/// * [offset] - Page number (1-based), legacy PHP semantics
/// * [page] - Same as offset when provided
/// * [orders] 
@BuiltValue()
abstract class ConsumerOrderListData implements Built<ConsumerOrderListData, ConsumerOrderListDataBuilder> {
  @BuiltValueField(wireName: r'total_size')
  int? get totalSize;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  /// Page number (1-based), legacy PHP semantics
  @BuiltValueField(wireName: r'offset')
  int? get offset;

  /// Same as offset when provided
  @BuiltValueField(wireName: r'page')
  int? get page;

  @BuiltValueField(wireName: r'orders')
  BuiltList<ConsumerOrderListItem>? get orders;

  ConsumerOrderListData._();

  factory ConsumerOrderListData([void updates(ConsumerOrderListDataBuilder b)]) = _$ConsumerOrderListData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerOrderListDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerOrderListData> get serializer => _$ConsumerOrderListDataSerializer();
}

class _$ConsumerOrderListDataSerializer implements PrimitiveSerializer<ConsumerOrderListData> {
  @override
  final Iterable<Type> types = const [ConsumerOrderListData, _$ConsumerOrderListData];

  @override
  final String wireName = r'ConsumerOrderListData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerOrderListData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalSize != null) {
      yield r'total_size';
      yield serializers.serialize(
        object.totalSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
    if (object.offset != null) {
      yield r'offset';
      yield serializers.serialize(
        object.offset,
        specifiedType: const FullType(int),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(int),
      );
    }
    if (object.orders != null) {
      yield r'orders';
      yield serializers.serialize(
        object.orders,
        specifiedType: const FullType(BuiltList, [FullType(ConsumerOrderListItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerOrderListData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerOrderListDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalSize = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.limit = valueDes;
          break;
        case r'offset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.offset = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.page = valueDes;
          break;
        case r'orders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ConsumerOrderListItem)]),
          ) as BuiltList<ConsumerOrderListItem>?;
          if (valueDes == null) continue;
          result.orders.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerOrderListData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerOrderListDataBuilder();
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


