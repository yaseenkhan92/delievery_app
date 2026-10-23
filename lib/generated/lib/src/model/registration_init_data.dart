//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/registration_init_data_subfolders.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'registration_init_data.g.dart';

/// RegistrationInitData
///
/// Properties:
/// * [cloudflareId] - Send as cloudflare_id on upload and register/apply
/// * [uploadPrefix] 
/// * [subfolders] 
@BuiltValue()
abstract class RegistrationInitData implements Built<RegistrationInitData, RegistrationInitDataBuilder> {
  /// Send as cloudflare_id on upload and register/apply
  @BuiltValueField(wireName: r'cloudflareId')
  String? get cloudflareId;

  @BuiltValueField(wireName: r'uploadPrefix')
  String? get uploadPrefix;

  @BuiltValueField(wireName: r'subfolders')
  RegistrationInitDataSubfolders? get subfolders;

  RegistrationInitData._();

  factory RegistrationInitData([void updates(RegistrationInitDataBuilder b)]) = _$RegistrationInitData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegistrationInitDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegistrationInitData> get serializer => _$RegistrationInitDataSerializer();
}

class _$RegistrationInitDataSerializer implements PrimitiveSerializer<RegistrationInitData> {
  @override
  final Iterable<Type> types = const [RegistrationInitData, _$RegistrationInitData];

  @override
  final String wireName = r'RegistrationInitData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegistrationInitData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cloudflareId != null) {
      yield r'cloudflareId';
      yield serializers.serialize(
        object.cloudflareId,
        specifiedType: const FullType(String),
      );
    }
    if (object.uploadPrefix != null) {
      yield r'uploadPrefix';
      yield serializers.serialize(
        object.uploadPrefix,
        specifiedType: const FullType(String),
      );
    }
    if (object.subfolders != null) {
      yield r'subfolders';
      yield serializers.serialize(
        object.subfolders,
        specifiedType: const FullType(RegistrationInitDataSubfolders),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RegistrationInitData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RegistrationInitDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cloudflareId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cloudflareId = valueDes;
          break;
        case r'uploadPrefix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.uploadPrefix = valueDes;
          break;
        case r'subfolders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RegistrationInitDataSubfolders),
          ) as RegistrationInitDataSubfolders?;
          if (valueDes == null) continue;
          result.subfolders.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegistrationInitData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegistrationInitDataBuilder();
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


