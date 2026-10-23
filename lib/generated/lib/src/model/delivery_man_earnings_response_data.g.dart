// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_earnings_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManEarningsResponseData
    extends DeliveryManEarningsResponseData {
  @override
  final DeliveryManEarningsSummary? summary;
  @override
  final int? totalSize;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final BuiltList<DeliveryManEarningHistoryItem>? history;

  factory _$DeliveryManEarningsResponseData(
          [void Function(DeliveryManEarningsResponseDataBuilder)? updates]) =>
      (DeliveryManEarningsResponseDataBuilder()..update(updates))._build();

  _$DeliveryManEarningsResponseData._(
      {this.summary, this.totalSize, this.limit, this.offset, this.history})
      : super._();
  @override
  DeliveryManEarningsResponseData rebuild(
          void Function(DeliveryManEarningsResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManEarningsResponseDataBuilder toBuilder() =>
      DeliveryManEarningsResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManEarningsResponseData &&
        summary == other.summary &&
        totalSize == other.totalSize &&
        limit == other.limit &&
        offset == other.offset &&
        history == other.history;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, totalSize.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, history.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManEarningsResponseData')
          ..add('summary', summary)
          ..add('totalSize', totalSize)
          ..add('limit', limit)
          ..add('offset', offset)
          ..add('history', history))
        .toString();
  }
}

class DeliveryManEarningsResponseDataBuilder
    implements
        Builder<DeliveryManEarningsResponseData,
            DeliveryManEarningsResponseDataBuilder> {
  _$DeliveryManEarningsResponseData? _$v;

  DeliveryManEarningsSummaryBuilder? _summary;
  DeliveryManEarningsSummaryBuilder get summary =>
      _$this._summary ??= DeliveryManEarningsSummaryBuilder();
  set summary(DeliveryManEarningsSummaryBuilder? summary) =>
      _$this._summary = summary;

  int? _totalSize;
  int? get totalSize => _$this._totalSize;
  set totalSize(int? totalSize) => _$this._totalSize = totalSize;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  ListBuilder<DeliveryManEarningHistoryItem>? _history;
  ListBuilder<DeliveryManEarningHistoryItem> get history =>
      _$this._history ??= ListBuilder<DeliveryManEarningHistoryItem>();
  set history(ListBuilder<DeliveryManEarningHistoryItem>? history) =>
      _$this._history = history;

  DeliveryManEarningsResponseDataBuilder() {
    DeliveryManEarningsResponseData._defaults(this);
  }

  DeliveryManEarningsResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _summary = $v.summary?.toBuilder();
      _totalSize = $v.totalSize;
      _limit = $v.limit;
      _offset = $v.offset;
      _history = $v.history?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManEarningsResponseData other) {
    _$v = other as _$DeliveryManEarningsResponseData;
  }

  @override
  void update(void Function(DeliveryManEarningsResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManEarningsResponseData build() => _build();

  _$DeliveryManEarningsResponseData _build() {
    _$DeliveryManEarningsResponseData _$result;
    try {
      _$result = _$v ??
          _$DeliveryManEarningsResponseData._(
            summary: _summary?.build(),
            totalSize: totalSize,
            limit: limit,
            offset: offset,
            history: _history?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'summary';
        _summary?.build();

        _$failedField = 'history';
        _history?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DeliveryManEarningsResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
