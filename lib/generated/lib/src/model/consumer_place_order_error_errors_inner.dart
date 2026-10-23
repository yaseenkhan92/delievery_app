//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_place_order_error_errors_inner.g.dart';

/// ConsumerPlaceOrderErrorErrorsInner
///
/// Properties:
/// * [code] 
/// * [message] 
@BuiltValue()
abstract class ConsumerPlaceOrderErrorErrorsInner implements Built<ConsumerPlaceOrderErrorErrorsInner, ConsumerPlaceOrderErrorErrorsInnerBuilder> {
  @BuiltValueField(wireName: r'code')
  String? get code;

  @BuiltValueField(wireName: r'message')
  String? get message;

  ConsumerPlaceOrderErrorErrorsInner._();

  factory ConsumerPlaceOrderErrorErrorsInner([void updates(ConsumerPlaceOrderErrorErrorsInnerBuilder b)]) = _$ConsumerPlaceOrderErrorErrorsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerPlaceOrderErrorErrorsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerPlaceOrderErrorErrorsInner> get serializer => _$ConsumerPlaceOrderErrorErrorsInnerSerializer();
}

class _$ConsumerPlaceOrderErrorErrorsInnerSerializer implements PrimitiveSerializer<ConsumerPlaceOrderErrorErrorsInner> {
  @override
  final Iterable<Type> types = const [ConsumerPlaceOrderErrorErrorsInner, _$ConsumerPlaceOrderErrorErrorsInner];

  @override
  final String wireName = r'ConsumerPlaceOrderErrorErrorsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerPlaceOrderErrorErrorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerPlaceOrderErrorErrorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerPlaceOrderErrorErrorsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.code = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerPlaceOrderErrorErrorsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerPlaceOrderErrorErrorsInnerBuilder();
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


