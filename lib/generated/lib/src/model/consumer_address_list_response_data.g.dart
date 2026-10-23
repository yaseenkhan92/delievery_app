// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_address_list_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerAddressListResponseData
    extends ConsumerAddressListResponseData {
  @override
  final int? totalSize;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final BuiltList<ConsumerAddress>? addresses;

  factory _$ConsumerAddressListResponseData(
          [void Function(ConsumerAddressListResponseDataBuilder)? updates]) =>
      (ConsumerAddressListResponseDataBuilder()..update(updates))._build();

  _$ConsumerAddressListResponseData._(
      {this.totalSize, this.limit, this.offset, this.addresses})
      : super._();
  @override
  ConsumerAddressListResponseData rebuild(
          void Function(ConsumerAddressListResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerAddressListResponseDataBuilder toBuilder() =>
      ConsumerAddressListResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerAddressListResponseData &&
        totalSize == other.totalSize &&
        limit == other.limit &&
        offset == other.offset &&
        addresses == other.addresses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalSize.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, addresses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerAddressListResponseData')
          ..add('totalSize', totalSize)
          ..add('limit', limit)
          ..add('offset', offset)
          ..add('addresses', addresses))
        .toString();
  }
}

class ConsumerAddressListResponseDataBuilder
    implements
        Builder<ConsumerAddressListResponseData,
            ConsumerAddressListResponseDataBuilder> {
  _$ConsumerAddressListResponseData? _$v;

  int? _totalSize;
  int? get totalSize => _$this._totalSize;
  set totalSize(int? totalSize) => _$this._totalSize = totalSize;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  ListBuilder<ConsumerAddress>? _addresses;
  ListBuilder<ConsumerAddress> get addresses =>
      _$this._addresses ??= ListBuilder<ConsumerAddress>();
  set addresses(ListBuilder<ConsumerAddress>? addresses) =>
      _$this._addresses = addresses;

  ConsumerAddressListResponseDataBuilder() {
    ConsumerAddressListResponseData._defaults(this);
  }

  ConsumerAddressListResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalSize = $v.totalSize;
      _limit = $v.limit;
      _offset = $v.offset;
      _addresses = $v.addresses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerAddressListResponseData other) {
    _$v = other as _$ConsumerAddressListResponseData;
  }

  @override
  void update(void Function(ConsumerAddressListResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerAddressListResponseData build() => _build();

  _$ConsumerAddressListResponseData _build() {
    _$ConsumerAddressListResponseData _$result;
    try {
      _$result = _$v ??
          _$ConsumerAddressListResponseData._(
            totalSize: totalSize,
            limit: limit,
            offset: offset,
            addresses: _addresses?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addresses';
        _addresses?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerAddressListResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
