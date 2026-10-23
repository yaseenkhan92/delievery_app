//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/notification_inbox_user_item_data.dart';
import 'package:openapi/src/model/notification_inbox_user_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/notification_inbox_broadcast_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'notification_inbox_item.g.dart';

/// NotificationInboxItem
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
/// * [userId] 
/// * [vendorId] 
/// * [deliveryManId] 
@BuiltValue()
abstract class NotificationInboxItem implements Built<NotificationInboxItem, NotificationInboxItemBuilder> {
  /// One Of [NotificationInboxBroadcastItem], [NotificationInboxUserItem]
  OneOf get oneOf;

  NotificationInboxItem._();

  factory NotificationInboxItem([void updates(NotificationInboxItemBuilder b)]) = _$NotificationInboxItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationInboxItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationInboxItem> get serializer => _$NotificationInboxItemSerializer();
}

class _$NotificationInboxItemSerializer implements PrimitiveSerializer<NotificationInboxItem> {
  @override
  final Iterable<Type> types = const [NotificationInboxItem, _$NotificationInboxItem];

  @override
  final String wireName = r'NotificationInboxItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationInboxItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationInboxItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  NotificationInboxItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationInboxItemBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(NotificationInboxBroadcastItem), FullType(NotificationInboxUserItem), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}


class NotificationInboxItemSource_Enum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'user_notification')
  static const NotificationInboxItemSource_Enum userNotification = _$notificationInboxItemSourceEnum_userNotification;

  static Serializer<NotificationInboxItemSource_Enum> get serializer => _$notificationInboxItemSourceEnumSerializer;

  const NotificationInboxItemSource_Enum._(String name): super(name);

  static BuiltSet<NotificationInboxItemSource_Enum> get values => _$notificationInboxItemSourceEnumValues;
  static NotificationInboxItemSource_Enum valueOf(String name) => _$notificationInboxItemSourceEnumValueOf(name);
}

