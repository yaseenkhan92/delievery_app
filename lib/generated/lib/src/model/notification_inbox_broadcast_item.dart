//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/notification_broadcast_data_payload.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_inbox_broadcast_item.g.dart';

/// Admin panel broadcast
///
/// Properties:
/// * [id] 
/// * [title] 
/// * [description] 
/// * [image] 
/// * [status] 
/// * [tergat] 
/// * [zoneId] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [data] 
/// * [imageFullUrl] 
/// * [source_] 
@BuiltValue()
abstract class NotificationInboxBroadcastItem implements Built<NotificationInboxBroadcastItem, NotificationInboxBroadcastItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'image')
  String? get image;

  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'tergat')
  String? get tergat;

  @BuiltValueField(wireName: r'zone_id')
  int? get zoneId;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'data')
  NotificationBroadcastDataPayload? get data;

  @BuiltValueField(wireName: r'image_full_url')
  String? get imageFullUrl;

  @BuiltValueField(wireName: r'source')
  NotificationInboxBroadcastItemSource_Enum get source_;
  // enum source_Enum {  broadcast,  };

  NotificationInboxBroadcastItem._();

  factory NotificationInboxBroadcastItem([void updates(NotificationInboxBroadcastItemBuilder b)]) = _$NotificationInboxBroadcastItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationInboxBroadcastItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationInboxBroadcastItem> get serializer => _$NotificationInboxBroadcastItemSerializer();
}

class _$NotificationInboxBroadcastItemSerializer implements PrimitiveSerializer<NotificationInboxBroadcastItem> {
  @override
  final Iterable<Type> types = const [NotificationInboxBroadcastItem, _$NotificationInboxBroadcastItem];

  @override
  final String wireName = r'NotificationInboxBroadcastItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationInboxBroadcastItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
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
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.tergat != null) {
      yield r'tergat';
      yield serializers.serialize(
        object.tergat,
        specifiedType: const FullType(String),
      );
    }
    if (object.zoneId != null) {
      yield r'zone_id';
      yield serializers.serialize(
        object.zoneId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(NotificationBroadcastDataPayload),
      );
    }
    if (object.imageFullUrl != null) {
      yield r'image_full_url';
      yield serializers.serialize(
        object.imageFullUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(NotificationInboxBroadcastItemSource_Enum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationInboxBroadcastItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationInboxBroadcastItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'tergat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tergat = valueDes;
          break;
        case r'zone_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.zoneId = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NotificationBroadcastDataPayload),
          ) as NotificationBroadcastDataPayload?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        case r'image_full_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imageFullUrl = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationInboxBroadcastItemSource_Enum),
          ) as NotificationInboxBroadcastItemSource_Enum;
          result.source_ = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationInboxBroadcastItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationInboxBroadcastItemBuilder();
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


class NotificationInboxBroadcastItemSource_Enum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'broadcast')
  static const NotificationInboxBroadcastItemSource_Enum broadcast = _$notificationInboxBroadcastItemSourceEnum_broadcast;

  static Serializer<NotificationInboxBroadcastItemSource_Enum> get serializer => _$notificationInboxBroadcastItemSourceEnumSerializer;

  const NotificationInboxBroadcastItemSource_Enum._(String name): super(name);

  static BuiltSet<NotificationInboxBroadcastItemSource_Enum> get values => _$notificationInboxBroadcastItemSourceEnumValues;
  static NotificationInboxBroadcastItemSource_Enum valueOf(String name) => _$notificationInboxBroadcastItemSourceEnumValueOf(name);
}

