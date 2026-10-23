//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/admin_zone_list_response_data_inner_formated_coordinates_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_zone_map_item.g.dart';

/// ConsumerZoneMapItem
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [displayName] 
/// * [status] 
/// * [formatedCoordinates] 
@BuiltValue()
abstract class ConsumerZoneMapItem implements Built<ConsumerZoneMapItem, ConsumerZoneMapItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'display_name')
  String? get displayName;

  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'formated_coordinates')
  BuiltList<AdminZoneListResponseDataInnerFormatedCoordinatesInner>? get formatedCoordinates;

  ConsumerZoneMapItem._();

  factory ConsumerZoneMapItem([void updates(ConsumerZoneMapItemBuilder b)]) = _$ConsumerZoneMapItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerZoneMapItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerZoneMapItem> get serializer => _$ConsumerZoneMapItemSerializer();
}

class _$ConsumerZoneMapItemSerializer implements PrimitiveSerializer<ConsumerZoneMapItem> {
  @override
  final Iterable<Type> types = const [ConsumerZoneMapItem, _$ConsumerZoneMapItem];

  @override
  final String wireName = r'ConsumerZoneMapItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerZoneMapItem object, {
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
    if (object.displayName != null) {
      yield r'display_name';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
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
    ConsumerZoneMapItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerZoneMapItemBuilder result,
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
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.status = valueDes;
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
  ConsumerZoneMapItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerZoneMapItemBuilder();
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


