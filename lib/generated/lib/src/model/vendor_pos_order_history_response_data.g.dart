// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_pos_order_history_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VendorPosOrderHistoryResponseDataSource_Enum
    _$vendorPosOrderHistoryResponseDataSourceEnum_online =
    const VendorPosOrderHistoryResponseDataSource_Enum._('online');
const VendorPosOrderHistoryResponseDataSource_Enum
    _$vendorPosOrderHistoryResponseDataSourceEnum_manual =
    const VendorPosOrderHistoryResponseDataSource_Enum._('manual');

VendorPosOrderHistoryResponseDataSource_Enum
    _$vendorPosOrderHistoryResponseDataSourceEnumValueOf(String name) {
  switch (name) {
    case 'online':
      return _$vendorPosOrderHistoryResponseDataSourceEnum_online;
    case 'manual':
      return _$vendorPosOrderHistoryResponseDataSourceEnum_manual;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VendorPosOrderHistoryResponseDataSource_Enum>
    _$vendorPosOrderHistoryResponseDataSourceEnumValues = BuiltSet<
        VendorPosOrderHistoryResponseDataSource_Enum>(const <VendorPosOrderHistoryResponseDataSource_Enum>[
  _$vendorPosOrderHistoryResponseDataSourceEnum_online,
  _$vendorPosOrderHistoryResponseDataSourceEnum_manual,
]);

Serializer<VendorPosOrderHistoryResponseDataSource_Enum>
    _$vendorPosOrderHistoryResponseDataSourceEnumSerializer =
    _$VendorPosOrderHistoryResponseDataSource_EnumSerializer();

class _$VendorPosOrderHistoryResponseDataSource_EnumSerializer
    implements
        PrimitiveSerializer<VendorPosOrderHistoryResponseDataSource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'online': 'online',
    'manual': 'manual',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'online': 'online',
    'manual': 'manual',
  };

  @override
  final Iterable<Type> types = const <Type>[
    VendorPosOrderHistoryResponseDataSource_Enum
  ];
  @override
  final String wireName = 'VendorPosOrderHistoryResponseDataSource_Enum';

  @override
  Object serialize(Serializers serializers,
          VendorPosOrderHistoryResponseDataSource_Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VendorPosOrderHistoryResponseDataSource_Enum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VendorPosOrderHistoryResponseDataSource_Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$VendorPosOrderHistoryResponseData
    extends VendorPosOrderHistoryResponseData {
  @override
  final VendorPosOrderHistoryResponseDataSource_Enum? source_;
  @override
  final String? status;
  @override
  final VendorPosOrderHistorySummary? summary;
  @override
  final int? total;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final BuiltList<VendorPosOrderHistoryItem>? orders;

  factory _$VendorPosOrderHistoryResponseData(
          [void Function(VendorPosOrderHistoryResponseDataBuilder)? updates]) =>
      (VendorPosOrderHistoryResponseDataBuilder()..update(updates))._build();

  _$VendorPosOrderHistoryResponseData._(
      {this.source_,
      this.status,
      this.summary,
      this.total,
      this.limit,
      this.offset,
      this.orders})
      : super._();
  @override
  VendorPosOrderHistoryResponseData rebuild(
          void Function(VendorPosOrderHistoryResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorPosOrderHistoryResponseDataBuilder toBuilder() =>
      VendorPosOrderHistoryResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorPosOrderHistoryResponseData &&
        source_ == other.source_ &&
        status == other.status &&
        summary == other.summary &&
        total == other.total &&
        limit == other.limit &&
        offset == other.offset &&
        orders == other.orders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, orders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorPosOrderHistoryResponseData')
          ..add('source_', source_)
          ..add('status', status)
          ..add('summary', summary)
          ..add('total', total)
          ..add('limit', limit)
          ..add('offset', offset)
          ..add('orders', orders))
        .toString();
  }
}

class VendorPosOrderHistoryResponseDataBuilder
    implements
        Builder<VendorPosOrderHistoryResponseData,
            VendorPosOrderHistoryResponseDataBuilder> {
  _$VendorPosOrderHistoryResponseData? _$v;

  VendorPosOrderHistoryResponseDataSource_Enum? _source_;
  VendorPosOrderHistoryResponseDataSource_Enum? get source_ => _$this._source_;
  set source_(VendorPosOrderHistoryResponseDataSource_Enum? source_) =>
      _$this._source_ = source_;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  VendorPosOrderHistorySummaryBuilder? _summary;
  VendorPosOrderHistorySummaryBuilder get summary =>
      _$this._summary ??= VendorPosOrderHistorySummaryBuilder();
  set summary(VendorPosOrderHistorySummaryBuilder? summary) =>
      _$this._summary = summary;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  ListBuilder<VendorPosOrderHistoryItem>? _orders;
  ListBuilder<VendorPosOrderHistoryItem> get orders =>
      _$this._orders ??= ListBuilder<VendorPosOrderHistoryItem>();
  set orders(ListBuilder<VendorPosOrderHistoryItem>? orders) =>
      _$this._orders = orders;

  VendorPosOrderHistoryResponseDataBuilder() {
    VendorPosOrderHistoryResponseData._defaults(this);
  }

  VendorPosOrderHistoryResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source_ = $v.source_;
      _status = $v.status;
      _summary = $v.summary?.toBuilder();
      _total = $v.total;
      _limit = $v.limit;
      _offset = $v.offset;
      _orders = $v.orders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorPosOrderHistoryResponseData other) {
    _$v = other as _$VendorPosOrderHistoryResponseData;
  }

  @override
  void update(
      void Function(VendorPosOrderHistoryResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorPosOrderHistoryResponseData build() => _build();

  _$VendorPosOrderHistoryResponseData _build() {
    _$VendorPosOrderHistoryResponseData _$result;
    try {
      _$result = _$v ??
          _$VendorPosOrderHistoryResponseData._(
            source_: source_,
            status: status,
            summary: _summary?.build(),
            total: total,
            limit: limit,
            offset: offset,
            orders: _orders?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'summary';
        _summary?.build();

        _$failedField = 'orders';
        _orders?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VendorPosOrderHistoryResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
