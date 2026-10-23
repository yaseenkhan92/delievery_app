//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/consumer_order_track_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_order_track_response.g.dart';

/// ConsumerOrderTrackResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [data] 
@BuiltValue()
abstract class ConsumerOrderTrackResponse implements Built<ConsumerOrderTrackResponse, ConsumerOrderTrackResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  @BuiltValueField(wireName: r'data')
  ConsumerOrderTrackData? get data;

  ConsumerOrderTrackResponse._();

  factory ConsumerOrderTrackResponse([void updates(ConsumerOrderTrackResponseBuilder b)]) = _$ConsumerOrderTrackResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerOrderTrackResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerOrderTrackResponse> get serializer => _$ConsumerOrderTrackResponseSerializer();
}

class _$ConsumerOrderTrackResponseSerializer implements PrimitiveSerializer<ConsumerOrderTrackResponse> {
  @override
  final Iterable<Type> types = const [ConsumerOrderTrackResponse, _$ConsumerOrderTrackResponse];

  @override
  final String wireName = r'ConsumerOrderTrackResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerOrderTrackResponse object, {
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
        specifiedType: const FullType(ConsumerOrderTrackData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerOrderTrackResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerOrderTrackResponseBuilder result,
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
            specifiedType: const FullType.nullable(ConsumerOrderTrackData),
          ) as ConsumerOrderTrackData?;
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
  ConsumerOrderTrackResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerOrderTrackResponseBuilder();
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


