// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_inbox_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotificationInboxItemSource_Enum
    _$notificationInboxItemSourceEnum_userNotification =
    const NotificationInboxItemSource_Enum._('userNotification');

NotificationInboxItemSource_Enum _$notificationInboxItemSourceEnumValueOf(
    String name) {
  switch (name) {
    case 'userNotification':
      return _$notificationInboxItemSourceEnum_userNotification;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NotificationInboxItemSource_Enum>
    _$notificationInboxItemSourceEnumValues = BuiltSet<
        NotificationInboxItemSource_Enum>(const <NotificationInboxItemSource_Enum>[
  _$notificationInboxItemSourceEnum_userNotification,
]);

Serializer<NotificationInboxItemSource_Enum>
    _$notificationInboxItemSourceEnumSerializer =
    _$NotificationInboxItemSource_EnumSerializer();

class _$NotificationInboxItemSource_EnumSerializer
    implements PrimitiveSerializer<NotificationInboxItemSource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'userNotification': 'user_notification',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'user_notification': 'userNotification',
  };

  @override
  final Iterable<Type> types = const <Type>[NotificationInboxItemSource_Enum];
  @override
  final String wireName = 'NotificationInboxItemSource_Enum';

  @override
  Object serialize(
          Serializers serializers, NotificationInboxItemSource_Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NotificationInboxItemSource_Enum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NotificationInboxItemSource_Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NotificationInboxItem extends NotificationInboxItem {
  @override
  final OneOf oneOf;

  factory _$NotificationInboxItem(
          [void Function(NotificationInboxItemBuilder)? updates]) =>
      (NotificationInboxItemBuilder()..update(updates))._build();

  _$NotificationInboxItem._({required this.oneOf}) : super._();
  @override
  NotificationInboxItem rebuild(
          void Function(NotificationInboxItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationInboxItemBuilder toBuilder() =>
      NotificationInboxItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationInboxItem && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationInboxItem')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class NotificationInboxItemBuilder
    implements Builder<NotificationInboxItem, NotificationInboxItemBuilder> {
  _$NotificationInboxItem? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  NotificationInboxItemBuilder() {
    NotificationInboxItem._defaults(this);
  }

  NotificationInboxItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationInboxItem other) {
    _$v = other as _$NotificationInboxItem;
  }

  @override
  void update(void Function(NotificationInboxItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationInboxItem build() => _build();

  _$NotificationInboxItem _build() {
    final _$result = _$v ??
        _$NotificationInboxItem._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'NotificationInboxItem', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
