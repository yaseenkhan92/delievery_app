// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_order_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class ConsumerOrderListResponseBuilder {
  void replace(ConsumerOrderListResponse other);
  void update(void Function(ConsumerOrderListResponseBuilder) updates);
  bool? get status;
  set status(bool? status);

  String? get msg;
  set msg(String? msg);

  ConsumerOrderListDataBuilder get data;
  set data(ConsumerOrderListDataBuilder? data);
}

class _$$ConsumerOrderListResponse extends $ConsumerOrderListResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final ConsumerOrderListData? data;

  factory _$$ConsumerOrderListResponse(
          [void Function($ConsumerOrderListResponseBuilder)? updates]) =>
      ($ConsumerOrderListResponseBuilder()..update(updates))._build();

  _$$ConsumerOrderListResponse._({this.status, this.msg, this.data})
      : super._();
  @override
  $ConsumerOrderListResponse rebuild(
          void Function($ConsumerOrderListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $ConsumerOrderListResponseBuilder toBuilder() =>
      $ConsumerOrderListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $ConsumerOrderListResponse &&
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
    return (newBuiltValueToStringHelper(r'$ConsumerOrderListResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class $ConsumerOrderListResponseBuilder
    implements
        Builder<$ConsumerOrderListResponse, $ConsumerOrderListResponseBuilder>,
        ConsumerOrderListResponseBuilder {
  _$$ConsumerOrderListResponse? _$v;

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

  $ConsumerOrderListResponseBuilder() {
    $ConsumerOrderListResponse._defaults(this);
  }

  $ConsumerOrderListResponseBuilder get _$this {
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
  void replace(covariant $ConsumerOrderListResponse other) {
    _$v = other as _$$ConsumerOrderListResponse;
  }

  @override
  void update(void Function($ConsumerOrderListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $ConsumerOrderListResponse build() => _build();

  _$$ConsumerOrderListResponse _build() {
    _$$ConsumerOrderListResponse _$result;
    try {
      _$result = _$v ??
          _$$ConsumerOrderListResponse._(
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
            r'$ConsumerOrderListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
