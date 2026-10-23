//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/admin_zone_list_response_data_inner_formated_coordinates_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_zone_list_response_data_inner.g.dart';

/// AdminZoneListResponseDataInner
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [formatedCoordinates] 
@BuiltValue()
abstract class AdminZoneListResponseDataInner implements Built<AdminZoneListResponseDataInner, AdminZoneListResponseDataInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'formated_coordinates')
  BuiltList<AdminZoneListResponseDataInnerFormatedCoordinatesInner>? get formatedCoordinates;

  AdminZoneListResponseDataInner._();

  factory AdminZoneListResponseDataInner([void updates(AdminZoneListResponseDataInnerBuilder b)]) = _$AdminZoneListResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminZoneListResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminZoneListResponseDataInner> get serializer => _$AdminZoneListResponseDataInnerSerializer();
}

class _$AdminZoneListResponseDataInnerSerializer implements PrimitiveSerializer<AdminZoneListResponseDataInner> {
  @override
  final Iterable<Type> types = const [AdminZoneListResponseDataInner, _$AdminZoneListResponseDataInner];

  @override
  final String wireName = r'AdminZoneListResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminZoneListResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.formatedCoordinates != null) {
      yield r'formated_coordinates';
      yield serializers.serialize(
        object.formatedCoordinates,
        specifiedType: const FullType(BuiltList, [FullType(AdminZoneListResponseDataInnerFormatedCoordinatesInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminZoneListResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdminZoneListResponseDataInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'formated_coordinates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(AdminZoneListResponseDataInnerFormatedCoordinatesInner)]),
          ) as BuiltList<AdminZoneListResponseDataInnerFormatedCoordinatesInner>?;
          if (valueDes == null) continue;
          result.formatedCoordinates.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminZoneListResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminZoneListResponseDataInnerBuilder();
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


