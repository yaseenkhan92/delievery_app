// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_zone_map_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerZoneMapItem extends ConsumerZoneMapItem {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? displayName;
  @override
  final bool? status;
  @override
  final BuiltList<AdminZoneListResponseDataInnerFormatedCoordinatesInner>?
      formatedCoordinates;

  factory _$ConsumerZoneMapItem(
          [void Function(ConsumerZoneMapItemBuilder)? updates]) =>
      (ConsumerZoneMapItemBuilder()..update(updates))._build();

  _$ConsumerZoneMapItem._(
      {this.id,
      this.name,
      this.displayName,
      this.status,
      this.formatedCoordinates})
      : super._();
  @override
  ConsumerZoneMapItem rebuild(
          void Function(ConsumerZoneMapItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerZoneMapItemBuilder toBuilder() =>
      ConsumerZoneMapItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerZoneMapItem &&
        id == other.id &&
        name == other.name &&
        displayName == other.displayName &&
        status == other.status &&
        formatedCoordinates == other.formatedCoordinates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, formatedCoordinates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerZoneMapItem')
          ..add('id', id)
          ..add('name', name)
          ..add('displayName', displayName)
          ..add('status', status)
          ..add('formatedCoordinates', formatedCoordinates))
        .toString();
  }
}

class ConsumerZoneMapItemBuilder
    implements Builder<ConsumerZoneMapItem, ConsumerZoneMapItemBuilder> {
  _$ConsumerZoneMapItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ListBuilder<AdminZoneListResponseDataInnerFormatedCoordinatesInner>?
      _formatedCoordinates;
  ListBuilder<AdminZoneListResponseDataInnerFormatedCoordinatesInner>
      get formatedCoordinates => _$this._formatedCoordinates ??=
          ListBuilder<AdminZoneListResponseDataInnerFormatedCoordinatesInner>();
  set formatedCoordinates(
          ListBuilder<AdminZoneListResponseDataInnerFormatedCoordinatesInner>?
              formatedCoordinates) =>
      _$this._formatedCoordinates = formatedCoordinates;

  ConsumerZoneMapItemBuilder() {
    ConsumerZoneMapItem._defaults(this);
  }

  ConsumerZoneMapItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _displayName = $v.displayName;
      _status = $v.status;
      _formatedCoordinates = $v.formatedCoordinates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerZoneMapItem other) {
    _$v = other as _$ConsumerZoneMapItem;
  }

  @override
  void update(void Function(ConsumerZoneMapItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerZoneMapItem build() => _build();

  _$ConsumerZoneMapItem _build() {
    _$ConsumerZoneMapItem _$result;
    try {
      _$result = _$v ??
          _$ConsumerZoneMapItem._(
            id: id,
            name: name,
            displayName: displayName,
            status: status,
            formatedCoordinates: _formatedCoordinates?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'formatedCoordinates';
        _formatedCoordinates?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerZoneMapItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
