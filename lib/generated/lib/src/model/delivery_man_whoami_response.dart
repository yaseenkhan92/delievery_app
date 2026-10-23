//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/delivery_man_profile_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_whoami_response.g.dart';

/// DeliveryManWhoamiResponse
///
/// Properties:
/// * [status] 
/// * [msg] 
/// * [data] 
@BuiltValue()
abstract class DeliveryManWhoamiResponse implements Built<DeliveryManWhoamiResponse, DeliveryManWhoamiResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'msg')
  String? get msg;

  @BuiltValueField(wireName: r'data')
  DeliveryManProfileData? get data;

  DeliveryManWhoamiResponse._();

  factory DeliveryManWhoamiResponse([void updates(DeliveryManWhoamiResponseBuilder b)]) = _$DeliveryManWhoamiResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManWhoamiResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManWhoamiResponse> get serializer => _$DeliveryManWhoamiResponseSerializer();
}

class _$DeliveryManWhoamiResponseSerializer implements PrimitiveSerializer<DeliveryManWhoamiResponse> {
  @override
  final Iterable<Type> types = const [DeliveryManWhoamiResponse, _$DeliveryManWhoamiResponse];

  @override
  final String wireName = r'DeliveryManWhoamiResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManWhoamiResponse object, {
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
        specifiedType: const FullType(DeliveryManProfileData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManWhoamiResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManWhoamiResponseBuilder result,
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
            specifiedType: const FullType.nullable(DeliveryManProfileData),
          ) as DeliveryManProfileData?;
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
  DeliveryManWhoamiResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManWhoamiResponseBuilder();
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


