//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_status_toggle_response.g.dart';

/// DeliveryManStatusToggleResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
@BuiltValue()
abstract class DeliveryManStatusToggleResponse implements Built<DeliveryManStatusToggleResponse, DeliveryManStatusToggleResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  DeliveryManStatusToggleResponse._();

  factory DeliveryManStatusToggleResponse([void updates(DeliveryManStatusToggleResponseBuilder b)]) = _$DeliveryManStatusToggleResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManStatusToggleResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManStatusToggleResponse> get serializer => _$DeliveryManStatusToggleResponseSerializer();
}

class _$DeliveryManStatusToggleResponseSerializer implements PrimitiveSerializer<DeliveryManStatusToggleResponse> {
  @override
  final Iterable<Type> types = const [DeliveryManStatusToggleResponse, _$DeliveryManStatusToggleResponse];

  @override
  final String wireName = r'DeliveryManStatusToggleResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManStatusToggleResponse object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManStatusToggleResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManStatusToggleResponseBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManStatusToggleResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManStatusToggleResponseBuilder();
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


