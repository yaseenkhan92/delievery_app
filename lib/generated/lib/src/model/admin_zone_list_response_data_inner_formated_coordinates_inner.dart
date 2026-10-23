//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_zone_list_response_data_inner_formated_coordinates_inner.g.dart';

/// AdminZoneListResponseDataInnerFormatedCoordinatesInner
///
/// Properties:
/// * [lat] 
/// * [lng] 
@BuiltValue()
abstract class AdminZoneListResponseDataInnerFormatedCoordinatesInner implements Built<AdminZoneListResponseDataInnerFormatedCoordinatesInner, AdminZoneListResponseDataInnerFormatedCoordinatesInnerBuilder> {
  @BuiltValueField(wireName: r'lat')
  num? get lat;

  @BuiltValueField(wireName: r'lng')
  num? get lng;

  AdminZoneListResponseDataInnerFormatedCoordinatesInner._();

  factory AdminZoneListResponseDataInnerFormatedCoordinatesInner([void updates(AdminZoneListResponseDataInnerFormatedCoordinatesInnerBuilder b)]) = _$AdminZoneListResponseDataInnerFormatedCoordinatesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminZoneListResponseDataInnerFormatedCoordinatesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminZoneListResponseDataInnerFormatedCoordinatesInner> get serializer => _$AdminZoneListResponseDataInnerFormatedCoordinatesInnerSerializer();
}

class _$AdminZoneListResponseDataInnerFormatedCoordinatesInnerSerializer implements PrimitiveSerializer<AdminZoneListResponseDataInnerFormatedCoordinatesInner> {
  @override
  final Iterable<Type> types = const [AdminZoneListResponseDataInnerFormatedCoordinatesInner, _$AdminZoneListResponseDataInnerFormatedCoordinatesInner];

  @override
  final String wireName = r'AdminZoneListResponseDataInnerFormatedCoordinatesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminZoneListResponseDataInnerFormatedCoordinatesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.lat != null) {
      yield r'lat';
      yield serializers.serialize(
        object.lat,
        specifiedType: const FullType(num),
      );
    }
    if (object.lng != null) {
      yield r'lng';
      yield serializers.serialize(
        object.lng,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminZoneListResponseDataInnerFormatedCoordinatesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdminZoneListResponseDataInnerFormatedCoordinatesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lat = valueDes;
          break;
        case r'lng':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lng = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminZoneListResponseDataInnerFormatedCoordinatesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminZoneListResponseDataInnerFormatedCoordinatesInnerBuilder();
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


