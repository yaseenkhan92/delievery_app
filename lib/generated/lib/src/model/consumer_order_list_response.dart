//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_order_list_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_order_list_response.g.dart';

/// ConsumerOrderListResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [data] 
@BuiltValue(instantiable: false)
abstract class ConsumerOrderListResponse  {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  @BuiltValueField(wireName: r'data')
  ConsumerOrderListData? get data;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerOrderListResponse> get serializer => _$ConsumerOrderListResponseSerializer();
}

class _$ConsumerOrderListResponseSerializer implements PrimitiveSerializer<ConsumerOrderListResponse> {
  @override
  final Iterable<Type> types = const [ConsumerOrderListResponse];

  @override
  final String wireName = r'ConsumerOrderListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerOrderListResponse object, {
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
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(ConsumerOrderListData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerOrderListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ConsumerOrderListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ConsumerOrderListResponse)) as $ConsumerOrderListResponse;
  }
}


/// a concrete implementation of [ConsumerOrderListResponse], since [ConsumerOrderListResponse] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ConsumerOrderListResponse implements ConsumerOrderListResponse, Built<$ConsumerOrderListResponse, $ConsumerOrderListResponseBuilder> {
  $ConsumerOrderListResponse._();

  factory $ConsumerOrderListResponse([void Function($ConsumerOrderListResponseBuilder)? updates]) = _$$ConsumerOrderListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ConsumerOrderListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ConsumerOrderListResponse> get serializer => _$$ConsumerOrderListResponseSerializer();
}

class _$$ConsumerOrderListResponseSerializer implements PrimitiveSerializer<$ConsumerOrderListResponse> {
  @override
  final Iterable<Type> types = const [$ConsumerOrderListResponse, _$$ConsumerOrderListResponse];

  @override
  final String wireName = r'$ConsumerOrderListResponse';

  @override
  Object serialize(
    Serializers serializers,
    $ConsumerOrderListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ConsumerOrderListResponse))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerOrderListResponseBuilder result,
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
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConsumerOrderListData),
          ) as ConsumerOrderListData?;
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
  $ConsumerOrderListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ConsumerOrderListResponseBuilder();
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

