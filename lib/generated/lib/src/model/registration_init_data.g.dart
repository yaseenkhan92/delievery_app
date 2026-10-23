// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_init_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegistrationInitData extends RegistrationInitData {
  @override
  final String? cloudflareId;
  @override
  final String? uploadPrefix;
  @override
  final RegistrationInitDataSubfolders? subfolders;

  factory _$RegistrationInitData(
          [void Function(RegistrationInitDataBuilder)? updates]) =>
      (RegistrationInitDataBuilder()..update(updates))._build();

  _$RegistrationInitData._(
      {this.cloudflareId, this.uploadPrefix, this.subfolders})
      : super._();
  @override
  RegistrationInitData rebuild(
          void Function(RegistrationInitDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegistrationInitDataBuilder toBuilder() =>
      RegistrationInitDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationInitData &&
        cloudflareId == other.cloudflareId &&
        uploadPrefix == other.uploadPrefix &&
        subfolders == other.subfolders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cloudflareId.hashCode);
    _$hash = $jc(_$hash, uploadPrefix.hashCode);
    _$hash = $jc(_$hash, subfolders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegistrationInitData')
          ..add('cloudflareId', cloudflareId)
          ..add('uploadPrefix', uploadPrefix)
          ..add('subfolders', subfolders))
        .toString();
  }
}

class RegistrationInitDataBuilder
    implements Builder<RegistrationInitData, RegistrationInitDataBuilder> {
  _$RegistrationInitData? _$v;

  String? _cloudflareId;
  String? get cloudflareId => _$this._cloudflareId;
  set cloudflareId(String? cloudflareId) => _$this._cloudflareId = cloudflareId;

  String? _uploadPrefix;
  String? get uploadPrefix => _$this._uploadPrefix;
  set uploadPrefix(String? uploadPrefix) => _$this._uploadPrefix = uploadPrefix;

  RegistrationInitDataSubfoldersBuilder? _subfolders;
  RegistrationInitDataSubfoldersBuilder get subfolders =>
      _$this._subfolders ??= RegistrationInitDataSubfoldersBuilder();
  set subfolders(RegistrationInitDataSubfoldersBuilder? subfolders) =>
      _$this._subfolders = subfolders;

  RegistrationInitDataBuilder() {
    RegistrationInitData._defaults(this);
  }

  RegistrationInitDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cloudflareId = $v.cloudflareId;
      _uploadPrefix = $v.uploadPrefix;
      _subfolders = $v.subfolders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationInitData other) {
    _$v = other as _$RegistrationInitData;
  }

  @override
  void update(void Function(RegistrationInitDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegistrationInitData build() => _build();

  _$RegistrationInitData _build() {
    _$RegistrationInitData _$result;
    try {
      _$result = _$v ??
          _$RegistrationInitData._(
            cloudflareId: cloudflareId,
            uploadPrefix: uploadPrefix,
            subfolders: _subfolders?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subfolders';
        _subfolders?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RegistrationInitData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
