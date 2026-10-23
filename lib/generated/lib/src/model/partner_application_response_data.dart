//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'partner_application_response_data.g.dart';

/// PartnerApplicationResponseData
///
/// Properties:
/// * [applicationStatus] 
/// * [cloudflareId] - Same value from POST /storage/registration-init; links uploads to the new vendor/driver row
@BuiltValue()
abstract class PartnerApplicationResponseData implements Built<PartnerApplicationResponseData, PartnerApplicationResponseDataBuilder> {
  @BuiltValueField(wireName: r'application_status')
  PartnerApplicationResponseDataApplicationStatusEnum? get applicationStatus;
  // enum applicationStatusEnum {  pending,  };

  /// Same value from POST /storage/registration-init; links uploads to the new vendor/driver row
  @BuiltValueField(wireName: r'cloudflare_id')
  String? get cloudflareId;

  PartnerApplicationResponseData._();

  factory PartnerApplicationResponseData([void updates(PartnerApplicationResponseDataBuilder b)]) = _$PartnerApplicationResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PartnerApplicationResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PartnerApplicationResponseData> get serializer => _$PartnerApplicationResponseDataSerializer();
}

class _$PartnerApplicationResponseDataSerializer implements PrimitiveSerializer<PartnerApplicationResponseData> {
  @override
  final Iterable<Type> types = const [PartnerApplicationResponseData, _$PartnerApplicationResponseData];

  @override
  final String wireName = r'PartnerApplicationResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PartnerApplicationResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.applicationStatus != null) {
      yield r'application_status';
      yield serializers.serialize(
        object.applicationStatus,
        specifiedType: const FullType(PartnerApplicationResponseDataApplicationStatusEnum),
      );
    }
    if (object.cloudflareId != null) {
      yield r'cloudflare_id';
      yield serializers.serialize(
        object.cloudflareId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PartnerApplicationResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PartnerApplicationResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'application_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PartnerApplicationResponseDataApplicationStatusEnum),
          ) as PartnerApplicationResponseDataApplicationStatusEnum?;
          if (valueDes == null) continue;
          result.applicationStatus = valueDes;
          break;
        case r'cloudflare_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cloudflareId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PartnerApplicationResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PartnerApplicationResponseDataBuilder();
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


class PartnerApplicationResponseDataApplicationStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'pending')
  static const PartnerApplicationResponseDataApplicationStatusEnum pending = _$partnerApplicationResponseDataApplicationStatusEnum_pending;

  static Serializer<PartnerApplicationResponseDataApplicationStatusEnum> get serializer => _$partnerApplicationResponseDataApplicationStatusEnumSerializer;

  const PartnerApplicationResponseDataApplicationStatusEnum._(String name): super(name);

  static BuiltSet<PartnerApplicationResponseDataApplicationStatusEnum> get values => _$partnerApplicationResponseDataApplicationStatusEnumValues;
  static PartnerApplicationResponseDataApplicationStatusEnum valueOf(String name) => _$partnerApplicationResponseDataApplicationStatusEnumValueOf(name);
}

