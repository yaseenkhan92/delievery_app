//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_place_order_error_errors_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_place_order_error.g.dart';

/// ConsumerPlaceOrderError
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [errors] 
@BuiltValue()
abstract class ConsumerPlaceOrderError implements Built<ConsumerPlaceOrderError, ConsumerPlaceOrderErrorBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  @BuiltValueField(wireName: r'errors')
  BuiltList<ConsumerPlaceOrderErrorErrorsInner>? get errors;

  ConsumerPlaceOrderError._();

  factory ConsumerPlaceOrderError([void updates(ConsumerPlaceOrderErrorBuilder b)]) = _$ConsumerPlaceOrderError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerPlaceOrderErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerPlaceOrderError> get serializer => _$ConsumerPlaceOrderErrorSerializer();
}

class _$ConsumerPlaceOrderErrorSerializer implements PrimitiveSerializer<ConsumerPlaceOrderError> {
  @override
  final Iterable<Type> types = const [ConsumerPlaceOrderError, _$ConsumerPlaceOrderError];

  @override
  final String wireName = r'ConsumerPlaceOrderError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerPlaceOrderError object, {
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
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType(BuiltList, [FullType(ConsumerPlaceOrderErrorErrorsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerPlaceOrderError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerPlaceOrderErrorBuilder result,
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
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ConsumerPlaceOrderErrorErrorsInner)]),
          ) as BuiltList<ConsumerPlaceOrderErrorErrorsInner>?;
          if (valueDes == null) continue;
          result.errors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerPlaceOrderError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerPlaceOrderErrorBuilder();
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


