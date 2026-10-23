//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_login_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_login_response.g.dart';

/// ConsumerLoginResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [data] 
@BuiltValue()
abstract class ConsumerLoginResponse implements Built<ConsumerLoginResponse, ConsumerLoginResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  @BuiltValueField(wireName: r'data')
  ConsumerLoginResponseData? get data;

  ConsumerLoginResponse._();

  factory ConsumerLoginResponse([void updates(ConsumerLoginResponseBuilder b)]) = _$ConsumerLoginResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerLoginResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerLoginResponse> get serializer => _$ConsumerLoginResponseSerializer();
}

class _$ConsumerLoginResponseSerializer implements PrimitiveSerializer<ConsumerLoginResponse> {
  @override
  final Iterable<Type> types = const [ConsumerLoginResponse, _$ConsumerLoginResponse];

  @override
  final String wireName = r'ConsumerLoginResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerLoginResponse object, {
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
        specifiedType: const FullType(ConsumerLoginResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerLoginResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerLoginResponseBuilder result,
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
            specifiedType: const FullType.nullable(ConsumerLoginResponseData),
          ) as ConsumerLoginResponseData?;
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
  ConsumerLoginResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerLoginResponseBuilder();
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


