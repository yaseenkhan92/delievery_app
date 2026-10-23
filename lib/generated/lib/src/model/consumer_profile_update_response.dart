//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_profile_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_profile_update_response.g.dart';

/// ConsumerProfileUpdateResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [data] 
@BuiltValue()
abstract class ConsumerProfileUpdateResponse implements Built<ConsumerProfileUpdateResponse, ConsumerProfileUpdateResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  @BuiltValueField(wireName: r'data')
  ConsumerProfileUser? get data;

  ConsumerProfileUpdateResponse._();

  factory ConsumerProfileUpdateResponse([void updates(ConsumerProfileUpdateResponseBuilder b)]) = _$ConsumerProfileUpdateResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerProfileUpdateResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerProfileUpdateResponse> get serializer => _$ConsumerProfileUpdateResponseSerializer();
}

class _$ConsumerProfileUpdateResponseSerializer implements PrimitiveSerializer<ConsumerProfileUpdateResponse> {
  @override
  final Iterable<Type> types = const [ConsumerProfileUpdateResponse, _$ConsumerProfileUpdateResponse];

  @override
  final String wireName = r'ConsumerProfileUpdateResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerProfileUpdateResponse object, {
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
        specifiedType: const FullType(ConsumerProfileUser),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerProfileUpdateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerProfileUpdateResponseBuilder result,
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
            specifiedType: const FullType.nullable(ConsumerProfileUser),
          ) as ConsumerProfileUser?;
          if (valueDes == null) continue;
          result.data = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerProfileUpdateResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerProfileUpdateResponseBuilder();
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


