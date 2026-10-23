// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_broadcast_data_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationBroadcastDataPayload
    extends NotificationBroadcastDataPayload {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? orderId;
  @override
  final String? image;
  @override
  final String? type;

  factory _$NotificationBroadcastDataPayload(
          [void Function(NotificationBroadcastDataPayloadBuilder)? updates]) =>
      (NotificationBroadcastDataPayloadBuilder()..update(updates))._build();

  _$NotificationBroadcastDataPayload._(
      {this.title, this.description, this.orderId, this.image, this.type})
      : super._();
  @override
  NotificationBroadcastDataPayload rebuild(
          void Function(NotificationBroadcastDataPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationBroadcastDataPayloadBuilder toBuilder() =>
      NotificationBroadcastDataPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationBroadcastDataPayload &&
        title == other.title &&
        description == other.description &&
        orderId == other.orderId &&
        image == other.image &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationBroadcastDataPayload')
          ..add('title', title)
          ..add('description', description)
          ..add('orderId', orderId)
          ..add('image', image)
          ..add('type', type))
        .toString();
  }
}

class NotificationBroadcastDataPayloadBuilder
    implements
        Builder<NotificationBroadcastDataPayload,
            NotificationBroadcastDataPayloadBuilder> {
  _$NotificationBroadcastDataPayload? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  NotificationBroadcastDataPayloadBuilder() {
    NotificationBroadcastDataPayload._defaults(this);
  }

  NotificationBroadcastDataPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _orderId = $v.orderId;
      _image = $v.image;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationBroadcastDataPayload other) {
    _$v = other as _$NotificationBroadcastDataPayload;
  }

  @override
  void update(void Function(NotificationBroadcastDataPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationBroadcastDataPayload build() => _build();

  _$NotificationBroadcastDataPayload _build() {
    final _$result = _$v ??
        _$NotificationBroadcastDataPayload._(
          title: title,
          description: description,
          orderId: orderId,
          image: image,
          type: type,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
