//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_update_profile_body.g.dart';

/// ConsumerUpdateProfileBody
///
/// Properties:
/// * [name] - Full name; split into f_name / l_name
/// * [fName] 
/// * [lName] 
/// * [email] 
/// * [phone] 
/// * [image] - Image URL after upload
/// * [currentLanguageKey] 
/// * [zoneId] - From GET /consumer/config/zone-id; persisted on user and returned on GET /consumer/whoami
@BuiltValue()
abstract class ConsumerUpdateProfileBody implements Built<ConsumerUpdateProfileBody, ConsumerUpdateProfileBodyBuilder> {
  /// Full name; split into f_name / l_name
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'f_name')
  String? get fName;

  @BuiltValueField(wireName: r'l_name')
  String? get lName;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  /// Image URL after upload
  @BuiltValueField(wireName: r'image')
  String? get image;

  @BuiltValueField(wireName: r'current_language_key')
  String? get currentLanguageKey;

  /// From GET /consumer/config/zone-id; persisted on user and returned on GET /consumer/whoami
  @BuiltValueField(wireName: r'zone_id')
  int? get zoneId;

  ConsumerUpdateProfileBody._();

  factory ConsumerUpdateProfileBody([void updates(ConsumerUpdateProfileBodyBuilder b)]) = _$ConsumerUpdateProfileBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerUpdateProfileBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerUpdateProfileBody> get serializer => _$ConsumerUpdateProfileBodySerializer();
}

class _$ConsumerUpdateProfileBodySerializer implements PrimitiveSerializer<ConsumerUpdateProfileBody> {
  @override
  final Iterable<Type> types = const [ConsumerUpdateProfileBody, _$ConsumerUpdateProfileBody];

  @override
  final String wireName = r'ConsumerUpdateProfileBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerUpdateProfileBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
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
    if (object.currentLanguageKey != null) {
      yield r'current_language_key';
      yield serializers.serialize(
        object.currentLanguageKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.zoneId != null) {
      yield r'zone_id';
      yield serializers.serialize(
        object.zoneId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerUpdateProfileBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerUpdateProfileBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phone = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'current_language_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.currentLanguageKey = valueDes;
          break;
        case r'zone_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.zoneId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerUpdateProfileBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerUpdateProfileBodyBuilder();
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


