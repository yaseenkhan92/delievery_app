//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_address.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_address_list_response_data.g.dart';

/// ConsumerAddressListResponseData
///
/// Properties:
/// * [totalSize] 
/// * [limit] 
/// * [offset] 
/// * [addresses] 
@BuiltValue()
abstract class ConsumerAddressListResponseData implements Built<ConsumerAddressListResponseData, ConsumerAddressListResponseDataBuilder> {
  @BuiltValueField(wireName: r'total_size')
  int? get totalSize;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  @BuiltValueField(wireName: r'offset')
  int? get offset;

  @BuiltValueField(wireName: r'addresses')
  BuiltList<ConsumerAddress>? get addresses;

  ConsumerAddressListResponseData._();

  factory ConsumerAddressListResponseData([void updates(ConsumerAddressListResponseDataBuilder b)]) = _$ConsumerAddressListResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerAddressListResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerAddressListResponseData> get serializer => _$ConsumerAddressListResponseDataSerializer();
}

class _$ConsumerAddressListResponseDataSerializer implements PrimitiveSerializer<ConsumerAddressListResponseData> {
  @override
  final Iterable<Type> types = const [ConsumerAddressListResponseData, _$ConsumerAddressListResponseData];

  @override
  final String wireName = r'ConsumerAddressListResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerAddressListResponseData object, {
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
    if (object.addresses != null) {
      yield r'addresses';
      yield serializers.serialize(
        object.addresses,
        specifiedType: const FullType(BuiltList, [FullType(ConsumerAddress)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerAddressListResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerAddressListResponseDataBuilder result,
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
        case r'addresses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ConsumerAddress)]),
          ) as BuiltList<ConsumerAddress>?;
          if (valueDes == null) continue;
          result.addresses.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerAddressListResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerAddressListResponseDataBuilder();
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


