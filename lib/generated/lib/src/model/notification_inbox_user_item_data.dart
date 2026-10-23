//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'notification_inbox_user_item_data.g.dart';

/// JSON string (order push payload)
@BuiltValue()
abstract class NotificationInboxUserItemData implements Built<NotificationInboxUserItemData, NotificationInboxUserItemDataBuilder> {
  /// One Of [JsonObject], [String]
  OneOf get oneOf;

  NotificationInboxUserItemData._();

  factory NotificationInboxUserItemData([void updates(NotificationInboxUserItemDataBuilder b)]) = _$NotificationInboxUserItemData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationInboxUserItemDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationInboxUserItemData> get serializer => _$NotificationInboxUserItemDataSerializer();
}

class _$NotificationInboxUserItemDataSerializer implements PrimitiveSerializer<NotificationInboxUserItemData> {
  @override
  final Iterable<Type> types = const [NotificationInboxUserItemData, _$NotificationInboxUserItemData];

  @override
  final String wireName = r'NotificationInboxUserItemData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationInboxUserItemData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationInboxUserItemData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  NotificationInboxUserItemData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationInboxUserItemDataBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(String), FullType(JsonObject), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}


