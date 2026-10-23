// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_inbox_user_item_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationInboxUserItemData extends NotificationInboxUserItemData {
  @override
  final OneOf oneOf;

  factory _$NotificationInboxUserItemData(
          [void Function(NotificationInboxUserItemDataBuilder)? updates]) =>
      (NotificationInboxUserItemDataBuilder()..update(updates))._build();

  _$NotificationInboxUserItemData._({required this.oneOf}) : super._();
  @override
  NotificationInboxUserItemData rebuild(
          void Function(NotificationInboxUserItemDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationInboxUserItemDataBuilder toBuilder() =>
      NotificationInboxUserItemDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationInboxUserItemData && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'NotificationInboxUserItemData')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class NotificationInboxUserItemDataBuilder
    implements
        Builder<NotificationInboxUserItemData,
            NotificationInboxUserItemDataBuilder> {
  _$NotificationInboxUserItemData? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  NotificationInboxUserItemDataBuilder() {
    NotificationInboxUserItemData._defaults(this);
  }

  NotificationInboxUserItemDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationInboxUserItemData other) {
    _$v = other as _$NotificationInboxUserItemData;
  }

  @override
  void update(void Function(NotificationInboxUserItemDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationInboxUserItemData build() => _build();

  _$NotificationInboxUserItemData _build() {
    final _$result = _$v ??
        _$NotificationInboxUserItemData._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'NotificationInboxUserItemData', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
