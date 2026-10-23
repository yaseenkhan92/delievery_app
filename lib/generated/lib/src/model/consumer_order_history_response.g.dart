// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_order_history_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerOrderHistoryResponse extends ConsumerOrderHistoryResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final ConsumerOrderListData? data;

  factory _$ConsumerOrderHistoryResponse(
          [void Function(ConsumerOrderHistoryResponseBuilder)? updates]) =>
      (ConsumerOrderHistoryResponseBuilder()..update(updates))._build();

  _$ConsumerOrderHistoryResponse._({this.status, this.msg, this.data})
      : super._();
  @override
  ConsumerOrderHistoryResponse rebuild(
          void Function(ConsumerOrderHistoryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerOrderHistoryResponseBuilder toBuilder() =>
      ConsumerOrderHistoryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerOrderHistoryResponse &&
        status == other.status &&
        msg == other.msg &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerOrderHistoryResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class ConsumerOrderHistoryResponseBuilder
    implements
        Builder<ConsumerOrderHistoryResponse,
            ConsumerOrderHistoryResponseBuilder>,
        ConsumerOrderListResponseBuilder {
  _$ConsumerOrderHistoryResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(covariant bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(covariant String? msg) => _$this._msg = msg;

  ConsumerOrderListDataBuilder? _data;
  ConsumerOrderListDataBuilder get data =>
      _$this._data ??= ConsumerOrderListDataBuilder();
  set data(covariant ConsumerOrderListDataBuilder? data) => _$this._data = data;

  ConsumerOrderHistoryResponseBuilder() {
    ConsumerOrderHistoryResponse._defaults(this);
  }

  ConsumerOrderHistoryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ConsumerOrderHistoryResponse other) {
    _$v = other as _$ConsumerOrderHistoryResponse;
  }

  @override
  void update(void Function(ConsumerOrderHistoryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerOrderHistoryResponse build() => _build();

  _$ConsumerOrderHistoryResponse _build() {
    _$ConsumerOrderHistoryResponse _$result;
    try {
      _$result = _$v ??
          _$ConsumerOrderHistoryResponse._(
            status: status,
            msg: msg,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerOrderHistoryResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
