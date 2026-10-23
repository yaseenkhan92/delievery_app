//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/notification_inbox_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_inbox_page_data.g.dart';

/// NotificationInboxPageData
///
/// Properties:
/// * [totalSize] 
/// * [limit] 
/// * [offset] - Current 1-based page
/// * [days] 
/// * [notifications] 
@BuiltValue()
abstract class NotificationInboxPageData implements Built<NotificationInboxPageData, NotificationInboxPageDataBuilder> {
  @BuiltValueField(wireName: r'total_size')
  int? get totalSize;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  /// Current 1-based page
  @BuiltValueField(wireName: r'offset')
  int? get offset;

  @BuiltValueField(wireName: r'days')
  int? get days;

  @BuiltValueField(wireName: r'notifications')
  BuiltList<NotificationInboxItem>? get notifications;

  NotificationInboxPageData._();

  factory NotificationInboxPageData([void updates(NotificationInboxPageDataBuilder b)]) = _$NotificationInboxPageData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationInboxPageDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationInboxPageData> get serializer => _$NotificationInboxPageDataSerializer();
}

class _$NotificationInboxPageDataSerializer implements PrimitiveSerializer<NotificationInboxPageData> {
  @override
  final Iterable<Type> types = const [NotificationInboxPageData, _$NotificationInboxPageData];

  @override
  final String wireName = r'NotificationInboxPageData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationInboxPageData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalSize != null) {
      yield r'total_size';
      yield serializers.serialize(
        object.totalSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
    if (object.offset != null) {
      yield r'offset';
      yield serializers.serialize(
        object.offset,
        specifiedType: const FullType(int),
      );
    }
    if (object.days != null) {
      yield r'days';
      yield serializers.serialize(
        object.days,
        specifiedType: const FullType(int),
      );
    }
    if (object.notifications != null) {
      yield r'notifications';
      yield serializers.serialize(
        object.notifications,
        specifiedType: const FullType(BuiltList, [FullType(NotificationInboxItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationInboxPageData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationInboxPageDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalSize = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.limit = valueDes;
          break;
        case r'offset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.offset = valueDes;
          break;
        case r'days':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.days = valueDes;
          break;
        case r'notifications':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(NotificationInboxItem)]),
          ) as BuiltList<NotificationInboxItem>?;
          if (valueDes == null) continue;
          result.notifications.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationInboxPageData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationInboxPageDataBuilder();
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


