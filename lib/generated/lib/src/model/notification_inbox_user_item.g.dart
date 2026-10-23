// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_inbox_user_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotificationInboxUserItemSource_Enum
    _$notificationInboxUserItemSourceEnum_userNotification =
    const NotificationInboxUserItemSource_Enum._('userNotification');

NotificationInboxUserItemSource_Enum
    _$notificationInboxUserItemSourceEnumValueOf(String name) {
  switch (name) {
    case 'userNotification':
      return _$notificationInboxUserItemSourceEnum_userNotification;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NotificationInboxUserItemSource_Enum>
    _$notificationInboxUserItemSourceEnumValues = BuiltSet<
        NotificationInboxUserItemSource_Enum>(const <NotificationInboxUserItemSource_Enum>[
  _$notificationInboxUserItemSourceEnum_userNotification,
]);

Serializer<NotificationInboxUserItemSource_Enum>
    _$notificationInboxUserItemSourceEnumSerializer =
    _$NotificationInboxUserItemSource_EnumSerializer();

class _$NotificationInboxUserItemSource_EnumSerializer
    implements PrimitiveSerializer<NotificationInboxUserItemSource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'userNotification': 'user_notification',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'user_notification': 'userNotification',
  };

  @override
  final Iterable<Type> types = const <Type>[
    NotificationInboxUserItemSource_Enum
  ];
  @override
  final String wireName = 'NotificationInboxUserItemSource_Enum';

  @override
  Object serialize(
          Serializers serializers, NotificationInboxUserItemSource_Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NotificationInboxUserItemSource_Enum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NotificationInboxUserItemSource_Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NotificationInboxUserItem extends NotificationInboxUserItem {
  @override
  final String id;
  @override
  final NotificationInboxUserItemData? data;
  @override
  final bool? status;
  @override
  final int? userId;
  @override
  final int? vendorId;
  @override
  final int? deliveryManId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final NotificationInboxUserItemSource_Enum source_;

  factory _$NotificationInboxUserItem(
          [void Function(NotificationInboxUserItemBuilder)? updates]) =>
      (NotificationInboxUserItemBuilder()..update(updates))._build();

  _$NotificationInboxUserItem._(
      {required this.id,
      this.data,
      this.status,
      this.userId,
      this.vendorId,
      this.deliveryManId,
      this.createdAt,
      this.updatedAt,
      required this.source_})
      : super._();
  @override
  NotificationInboxUserItem rebuild(
          void Function(NotificationInboxUserItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationInboxUserItemBuilder toBuilder() =>
      NotificationInboxUserItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationInboxUserItem &&
        id == other.id &&
        data == other.data &&
        status == other.status &&
        userId == other.userId &&
        vendorId == other.vendorId &&
        deliveryManId == other.deliveryManId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        source_ == other.source_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, vendorId.hashCode);
    _$hash = $jc(_$hash, deliveryManId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationInboxUserItem')
          ..add('id', id)
          ..add('data', data)
          ..add('status', status)
          ..add('userId', userId)
          ..add('vendorId', vendorId)
          ..add('deliveryManId', deliveryManId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('source_', source_))
        .toString();
  }
}

class NotificationInboxUserItemBuilder
    implements
        Builder<NotificationInboxUserItem, NotificationInboxUserItemBuilder> {
  _$NotificationInboxUserItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  NotificationInboxUserItemDataBuilder? _data;
  NotificationInboxUserItemDataBuilder get data =>
      _$this._data ??= NotificationInboxUserItemDataBuilder();
  set data(NotificationInboxUserItemDataBuilder? data) => _$this._data = data;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  int? _vendorId;
  int? get vendorId => _$this._vendorId;
  set vendorId(int? vendorId) => _$this._vendorId = vendorId;

  int? _deliveryManId;
  int? get deliveryManId => _$this._deliveryManId;
  set deliveryManId(int? deliveryManId) =>
      _$this._deliveryManId = deliveryManId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  NotificationInboxUserItemSource_Enum? _source_;
  NotificationInboxUserItemSource_Enum? get source_ => _$this._source_;
  set source_(NotificationInboxUserItemSource_Enum? source_) =>
      _$this._source_ = source_;

  NotificationInboxUserItemBuilder() {
    NotificationInboxUserItem._defaults(this);
  }

  NotificationInboxUserItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _data = $v.data?.toBuilder();
      _status = $v.status;
      _userId = $v.userId;
      _vendorId = $v.vendorId;
      _deliveryManId = $v.deliveryManId;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _source_ = $v.source_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationInboxUserItem other) {
    _$v = other as _$NotificationInboxUserItem;
  }

  @override
  void update(void Function(NotificationInboxUserItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationInboxUserItem build() => _build();

  _$NotificationInboxUserItem _build() {
    _$NotificationInboxUserItem _$result;
    try {
      _$result = _$v ??
          _$NotificationInboxUserItem._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'NotificationInboxUserItem', 'id'),
            data: _data?.build(),
            status: status,
            userId: userId,
            vendorId: vendorId,
            deliveryManId: deliveryManId,
            createdAt: createdAt,
            updatedAt: updatedAt,
            source_: BuiltValueNullFieldError.checkNotNull(
                source_, r'NotificationInboxUserItem', 'source_'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NotificationInboxUserItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
