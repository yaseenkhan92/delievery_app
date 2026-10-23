//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_order_track_delivery_man.g.dart';

/// ConsumerOrderTrackDeliveryMan
///
/// Properties:
/// * [id] 
/// * [fName] 
/// * [lName] 
/// * [phone] 
/// * [email] 
/// * [image] 
/// * [imageUrl] 
@BuiltValue()
abstract class ConsumerOrderTrackDeliveryMan implements Built<ConsumerOrderTrackDeliveryMan, ConsumerOrderTrackDeliveryManBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'f_name')
  String? get fName;

  @BuiltValueField(wireName: r'l_name')
  String? get lName;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'image')
  String? get image;

  @BuiltValueField(wireName: r'image_url')
  String? get imageUrl;

  ConsumerOrderTrackDeliveryMan._();

  factory ConsumerOrderTrackDeliveryMan([void updates(ConsumerOrderTrackDeliveryManBuilder b)]) = _$ConsumerOrderTrackDeliveryMan;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerOrderTrackDeliveryManBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerOrderTrackDeliveryMan> get serializer => _$ConsumerOrderTrackDeliveryManSerializer();
}

class _$ConsumerOrderTrackDeliveryManSerializer implements PrimitiveSerializer<ConsumerOrderTrackDeliveryMan> {
  @override
  final Iterable<Type> types = const [ConsumerOrderTrackDeliveryMan, _$ConsumerOrderTrackDeliveryMan];

  @override
  final String wireName = r'ConsumerOrderTrackDeliveryMan';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerOrderTrackDeliveryMan object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lName != null) {
      yield r'l_name';
      yield serializers.serialize(
        object.lName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.imageUrl != null) {
      yield r'image_url';
      yield serializers.serialize(
        object.imageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerOrderTrackDeliveryMan object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerOrderTrackDeliveryManBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'image_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imageUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerOrderTrackDeliveryMan deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerOrderTrackDeliveryManBuilder();
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


