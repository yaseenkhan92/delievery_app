//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_order_counts_response.g.dart';

/// VendorOrderCountsResponse
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class VendorOrderCountsResponse implements Built<VendorOrderCountsResponse, VendorOrderCountsResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  BuiltMap<String, int>? get data;

  VendorOrderCountsResponse._();

  factory VendorOrderCountsResponse([void updates(VendorOrderCountsResponseBuilder b)]) = _$VendorOrderCountsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorOrderCountsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorOrderCountsResponse> get serializer => _$VendorOrderCountsResponseSerializer();
}

class _$VendorOrderCountsResponseSerializer implements PrimitiveSerializer<VendorOrderCountsResponse> {
  @override
  final Iterable<Type> types = const [VendorOrderCountsResponse, _$VendorOrderCountsResponse];

  @override
  final String wireName = r'VendorOrderCountsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorOrderCountsResponse object, {
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
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorOrderCountsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorOrderCountsResponseBuilder result,
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
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
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
  VendorOrderCountsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorOrderCountsResponseBuilder();
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


