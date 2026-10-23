//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_man_login_data.g.dart';

/// DeliveryManLoginData
///
/// Properties:
/// * [token] - Bearer JWT for all protected routes
/// * [topic] - Firebase topic — subscribe for zone/vehicle order pushes
/// * [id] 
/// * [fName] 
/// * [lName] 
/// * [phone] 
@BuiltValue()
abstract class DeliveryManLoginData implements Built<DeliveryManLoginData, DeliveryManLoginDataBuilder> {
  /// Bearer JWT for all protected routes
  @BuiltValueField(wireName: r'token')
  String? get token;

  /// Firebase topic — subscribe for zone/vehicle order pushes
  @BuiltValueField(wireName: r'topic')
  String? get topic;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'f_name')
  String? get fName;

  @BuiltValueField(wireName: r'l_name')
  String? get lName;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  DeliveryManLoginData._();

  factory DeliveryManLoginData([void updates(DeliveryManLoginDataBuilder b)]) = _$DeliveryManLoginData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryManLoginDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryManLoginData> get serializer => _$DeliveryManLoginDataSerializer();
}

class _$DeliveryManLoginDataSerializer implements PrimitiveSerializer<DeliveryManLoginData> {
  @override
  final Iterable<Type> types = const [DeliveryManLoginData, _$DeliveryManLoginData];

  @override
  final String wireName = r'DeliveryManLoginData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryManLoginData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
    if (object.topic != null) {
      yield r'topic';
      yield serializers.serialize(
        object.topic,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.fName != null) {
      yield r'f_name';
      yield serializers.serialize(
        object.fName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lName != null) {
      yield r'l_name';
      yield serializers.serialize(
        object.lName,
        specifiedType: const FullType(String),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryManLoginData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryManLoginDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token = valueDes;
          break;
        case r'topic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.topic = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'f_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fName = valueDes;
          break;
        case r'l_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lName = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phone = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryManLoginData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryManLoginDataBuilder();
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


