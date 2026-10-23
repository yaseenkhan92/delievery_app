// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_inbox_page_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationInboxPageData extends NotificationInboxPageData {
  @override
  final int? totalSize;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final int? days;
  @override
  final BuiltList<NotificationInboxItem>? notifications;

  factory _$NotificationInboxPageData(
          [void Function(NotificationInboxPageDataBuilder)? updates]) =>
      (NotificationInboxPageDataBuilder()..update(updates))._build();

  _$NotificationInboxPageData._(
      {this.totalSize, this.limit, this.offset, this.days, this.notifications})
      : super._();
  @override
  NotificationInboxPageData rebuild(
          void Function(NotificationInboxPageDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationInboxPageDataBuilder toBuilder() =>
      NotificationInboxPageDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationInboxPageData &&
        totalSize == other.totalSize &&
        limit == other.limit &&
        offset == other.offset &&
        days == other.days &&
        notifications == other.notifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalSize.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, days.hashCode);
    _$hash = $jc(_$hash, notifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationInboxPageData')
          ..add('totalSize', totalSize)
          ..add('limit', limit)
          ..add('offset', offset)
          ..add('days', days)
          ..add('notifications', notifications))
        .toString();
  }
}

class NotificationInboxPageDataBuilder
    implements
        Builder<NotificationInboxPageData, NotificationInboxPageDataBuilder> {
  _$NotificationInboxPageData? _$v;

  int? _totalSize;
  int? get totalSize => _$this._totalSize;
  set totalSize(int? totalSize) => _$this._totalSize = totalSize;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  int? _days;
  int? get days => _$this._days;
  set days(int? days) => _$this._days = days;

  ListBuilder<NotificationInboxItem>? _notifications;
  ListBuilder<NotificationInboxItem> get notifications =>
      _$this._notifications ??= ListBuilder<NotificationInboxItem>();
  set notifications(ListBuilder<NotificationInboxItem>? notifications) =>
      _$this._notifications = notifications;

  NotificationInboxPageDataBuilder() {
    NotificationInboxPageData._defaults(this);
  }

  NotificationInboxPageDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalSize = $v.totalSize;
      _limit = $v.limit;
      _offset = $v.offset;
      _days = $v.days;
      _notifications = $v.notifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationInboxPageData other) {
    _$v = other as _$NotificationInboxPageData;
  }

  @override
  void update(void Function(NotificationInboxPageDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationInboxPageData build() => _build();

  _$NotificationInboxPageData _build() {
    _$NotificationInboxPageData _$result;
    try {
      _$result = _$v ??
          _$NotificationInboxPageData._(
            totalSize: totalSize,
            limit: limit,
            offset: offset,
            days: days,
            notifications: _notifications?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'notifications';
        _notifications?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NotificationInboxPageData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
