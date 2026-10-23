//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/notification_inbox_user_item_data.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_inbox_user_item.g.dart';

/// Order/system push persisted for the app inbox
///
/// Properties:
/// * [id] 
/// * [data] 
/// * [status] 
/// * [userId] 
/// * [vendorId] 
/// * [deliveryManId] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [source_] 
@BuiltValue()
abstract class NotificationInboxUserItem implements Built<NotificationInboxUserItem, NotificationInboxUserItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'data')
  NotificationInboxUserItemData? get data;

  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'user_id')
  int? get userId;

  @BuiltValueField(wireName: r'vendor_id')
  int? get vendorId;

  @BuiltValueField(wireName: r'delivery_man_id')
  int? get deliveryManId;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'source')
  NotificationInboxUserItemSource_Enum get source_;
  // enum source_Enum {  user_notification,  };

  NotificationInboxUserItem._();

  factory NotificationInboxUserItem([void updates(NotificationInboxUserItemBuilder b)]) = _$NotificationInboxUserItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationInboxUserItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationInboxUserItem> get serializer => _$NotificationInboxUserItemSerializer();
}

class _$NotificationInboxUserItemSerializer implements PrimitiveSerializer<NotificationInboxUserItem> {
  @override
  final Iterable<Type> types = const [NotificationInboxUserItem, _$NotificationInboxUserItem];

  @override
  final String wireName = r'NotificationInboxUserItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationInboxUserItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(NotificationInboxUserItemData),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.userId != null) {
      yield r'user_id';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.vendorId != null) {
      yield r'vendor_id';
      yield serializers.serialize(
        object.vendorId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.deliveryManId != null) {
      yield r'delivery_man_id';
      yield serializers.serialize(
        object.deliveryManId,
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
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(NotificationInboxUserItemSource_Enum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationInboxUserItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationInboxUserItemBuilder result,
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
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NotificationInboxUserItemData),
          ) as NotificationInboxUserItemData?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.userId = valueDes;
          break;
        case r'vendor_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.vendorId = valueDes;
          break;
        case r'delivery_man_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.deliveryManId = valueDes;
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
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationInboxUserItemSource_Enum),
          ) as NotificationInboxUserItemSource_Enum;
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
  NotificationInboxUserItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationInboxUserItemBuilder();
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


class NotificationInboxUserItemSource_Enum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'user_notification')
  static const NotificationInboxUserItemSource_Enum userNotification = _$notificationInboxUserItemSourceEnum_userNotification;

  static Serializer<NotificationInboxUserItemSource_Enum> get serializer => _$notificationInboxUserItemSourceEnumSerializer;

  const NotificationInboxUserItemSource_Enum._(String name): super(name);

  static BuiltSet<NotificationInboxUserItemSource_Enum> get values => _$notificationInboxUserItemSourceEnumValues;
  static NotificationInboxUserItemSource_Enum valueOf(String name) => _$notificationInboxUserItemSourceEnumValueOf(name);
}

