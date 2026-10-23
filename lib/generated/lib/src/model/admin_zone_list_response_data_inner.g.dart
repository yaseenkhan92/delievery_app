// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_zone_list_response_data_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminZoneListResponseDataInner extends AdminZoneListResponseDataInner {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final BuiltList<AdminZoneListResponseDataInnerFormatedCoordinatesInner>?
      formatedCoordinates;

  factory _$AdminZoneListResponseDataInner(
          [void Function(AdminZoneListResponseDataInnerBuilder)? updates]) =>
      (AdminZoneListResponseDataInnerBuilder()..update(updates))._build();

  _$AdminZoneListResponseDataInner._(
      {this.id, this.name, this.formatedCoordinates})
      : super._();
  @override
  AdminZoneListResponseDataInner rebuild(
          void Function(AdminZoneListResponseDataInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminZoneListResponseDataInnerBuilder toBuilder() =>
      AdminZoneListResponseDataInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminZoneListResponseDataInner &&
        id == other.id &&
        name == other.name &&
        formatedCoordinates == other.formatedCoordinates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, formatedCoordinates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminZoneListResponseDataInner')
          ..add('id', id)
          ..add('name', name)
          ..add('formatedCoordinates', formatedCoordinates))
        .toString();
  }
}

class AdminZoneListResponseDataInnerBuilder
    implements
        Builder<AdminZoneListResponseDataInner,
            AdminZoneListResponseDataInnerBuilder> {
  _$AdminZoneListResponseDataInner? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<AdminZoneListResponseDataInnerFormatedCoordinatesInner>?
      _formatedCoordinates;
  ListBuilder<AdminZoneListResponseDataInnerFormatedCoordinatesInner>
      get formatedCoordinates => _$this._formatedCoordinates ??=
          ListBuilder<AdminZoneListResponseDataInnerFormatedCoordinatesInner>();
  set formatedCoordinates(
          ListBuilder<AdminZoneListResponseDataInnerFormatedCoordinatesInner>?
              formatedCoordinates) =>
      _$this._formatedCoordinates = formatedCoordinates;

  AdminZoneListResponseDataInnerBuilder() {
    AdminZoneListResponseDataInner._defaults(this);
  }

  AdminZoneListResponseDataInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _formatedCoordinates = $v.formatedCoordinates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminZoneListResponseDataInner other) {
    _$v = other as _$AdminZoneListResponseDataInner;
  }

  @override
  void update(void Function(AdminZoneListResponseDataInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminZoneListResponseDataInner build() => _build();

  _$AdminZoneListResponseDataInner _build() {
    _$AdminZoneListResponseDataInner _$result;
    try {
      _$result = _$v ??
          _$AdminZoneListResponseDataInner._(
            id: id,
            name: name,
            formatedCoordinates: _formatedCoordinates?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'formatedCoordinates';
        _formatedCoordinates?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AdminZoneListResponseDataInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
