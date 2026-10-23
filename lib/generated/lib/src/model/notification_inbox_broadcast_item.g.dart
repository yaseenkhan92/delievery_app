// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_inbox_broadcast_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotificationInboxBroadcastItemSource_Enum
    _$notificationInboxBroadcastItemSourceEnum_broadcast =
    const NotificationInboxBroadcastItemSource_Enum._('broadcast');

NotificationInboxBroadcastItemSource_Enum
    _$notificationInboxBroadcastItemSourceEnumValueOf(String name) {
  switch (name) {
    case 'broadcast':
      return _$notificationInboxBroadcastItemSourceEnum_broadcast;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NotificationInboxBroadcastItemSource_Enum>
    _$notificationInboxBroadcastItemSourceEnumValues = BuiltSet<
        NotificationInboxBroadcastItemSource_Enum>(const <NotificationInboxBroadcastItemSource_Enum>[
  _$notificationInboxBroadcastItemSourceEnum_broadcast,
]);

Serializer<NotificationInboxBroadcastItemSource_Enum>
    _$notificationInboxBroadcastItemSourceEnumSerializer =
    _$NotificationInboxBroadcastItemSource_EnumSerializer();

class _$NotificationInboxBroadcastItemSource_EnumSerializer
    implements PrimitiveSerializer<NotificationInboxBroadcastItemSource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'broadcast': 'broadcast',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'broadcast': 'broadcast',
  };

  @override
  final Iterable<Type> types = const <Type>[
    NotificationInboxBroadcastItemSource_Enum
  ];
  @override
  final String wireName = 'NotificationInboxBroadcastItemSource_Enum';

  @override
  Object serialize(Serializers serializers,
          NotificationInboxBroadcastItemSource_Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NotificationInboxBroadcastItemSource_Enum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NotificationInboxBroadcastItemSource_Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NotificationInboxBroadcastItem extends NotificationInboxBroadcastItem {
  @override
  final String id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final bool? status;
  @override
  final String? tergat;
  @override
  final int? zoneId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final NotificationBroadcastDataPayload? data;
  @override
  final String? imageFullUrl;
  @override
  final NotificationInboxBroadcastItemSource_Enum source_;

  factory _$NotificationInboxBroadcastItem(
          [void Function(NotificationInboxBroadcastItemBuilder)? updates]) =>
      (NotificationInboxBroadcastItemBuilder()..update(updates))._build();

  _$NotificationInboxBroadcastItem._(
      {required this.id,
      this.title,
      this.description,
      this.image,
      this.status,
      this.tergat,
      this.zoneId,
      this.createdAt,
      this.updatedAt,
      this.data,
      this.imageFullUrl,
      required this.source_})
      : super._();
  @override
  NotificationInboxBroadcastItem rebuild(
          void Function(NotificationInboxBroadcastItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationInboxBroadcastItemBuilder toBuilder() =>
      NotificationInboxBroadcastItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationInboxBroadcastItem &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        image == other.image &&
        status == other.status &&
        tergat == other.tergat &&
        zoneId == other.zoneId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        data == other.data &&
        imageFullUrl == other.imageFullUrl &&
        source_ == other.source_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, tergat.hashCode);
    _$hash = $jc(_$hash, zoneId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, imageFullUrl.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationInboxBroadcastItem')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('image', image)
          ..add('status', status)
          ..add('tergat', tergat)
          ..add('zoneId', zoneId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('data', data)
          ..add('imageFullUrl', imageFullUrl)
          ..add('source_', source_))
        .toString();
  }
}

class NotificationInboxBroadcastItemBuilder
    implements
        Builder<NotificationInboxBroadcastItem,
            NotificationInboxBroadcastItemBuilder> {
  _$NotificationInboxBroadcastItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _tergat;
  String? get tergat => _$this._tergat;
  set tergat(String? tergat) => _$this._tergat = tergat;

  int? _zoneId;
  int? get zoneId => _$this._zoneId;
  set zoneId(int? zoneId) => _$this._zoneId = zoneId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  NotificationBroadcastDataPayloadBuilder? _data;
  NotificationBroadcastDataPayloadBuilder get data =>
      _$this._data ??= NotificationBroadcastDataPayloadBuilder();
  set data(NotificationBroadcastDataPayloadBuilder? data) =>
      _$this._data = data;

  String? _imageFullUrl;
  String? get imageFullUrl => _$this._imageFullUrl;
  set imageFullUrl(String? imageFullUrl) => _$this._imageFullUrl = imageFullUrl;

  NotificationInboxBroadcastItemSource_Enum? _source_;
  NotificationInboxBroadcastItemSource_Enum? get source_ => _$this._source_;
  set source_(NotificationInboxBroadcastItemSource_Enum? source_) =>
      _$this._source_ = source_;

  NotificationInboxBroadcastItemBuilder() {
    NotificationInboxBroadcastItem._defaults(this);
  }

  NotificationInboxBroadcastItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _image = $v.image;
      _status = $v.status;
      _tergat = $v.tergat;
      _zoneId = $v.zoneId;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _data = $v.data?.toBuilder();
      _imageFullUrl = $v.imageFullUrl;
      _source_ = $v.source_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationInboxBroadcastItem other) {
    _$v = other as _$NotificationInboxBroadcastItem;
  }

  @override
  void update(void Function(NotificationInboxBroadcastItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationInboxBroadcastItem build() => _build();

  _$NotificationInboxBroadcastItem _build() {
    _$NotificationInboxBroadcastItem _$result;
    try {
      _$result = _$v ??
          _$NotificationInboxBroadcastItem._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'NotificationInboxBroadcastItem', 'id'),
            title: title,
            description: description,
            image: image,
            status: status,
            tergat: tergat,
            zoneId: zoneId,
            createdAt: createdAt,
            updatedAt: updatedAt,
            data: _data?.build(),
            imageFullUrl: imageFullUrl,
            source_: BuiltValueNullFieldError.checkNotNull(
                source_, r'NotificationInboxBroadcastItem', 'source_'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NotificationInboxBroadcastItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
