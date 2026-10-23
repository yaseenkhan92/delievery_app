// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_suggested_foods_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerSuggestedFoodsResponse extends ConsumerSuggestedFoodsResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final BuiltList<ConsumerSuggestedFoodsResponseDataInner>? data;

  factory _$ConsumerSuggestedFoodsResponse(
          [void Function(ConsumerSuggestedFoodsResponseBuilder)? updates]) =>
      (ConsumerSuggestedFoodsResponseBuilder()..update(updates))._build();

  _$ConsumerSuggestedFoodsResponse._({this.status, this.msg, this.data})
      : super._();
  @override
  ConsumerSuggestedFoodsResponse rebuild(
          void Function(ConsumerSuggestedFoodsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerSuggestedFoodsResponseBuilder toBuilder() =>
      ConsumerSuggestedFoodsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerSuggestedFoodsResponse &&
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
    return (newBuiltValueToStringHelper(r'ConsumerSuggestedFoodsResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class ConsumerSuggestedFoodsResponseBuilder
    implements
        Builder<ConsumerSuggestedFoodsResponse,
            ConsumerSuggestedFoodsResponseBuilder> {
  _$ConsumerSuggestedFoodsResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  ListBuilder<ConsumerSuggestedFoodsResponseDataInner>? _data;
  ListBuilder<ConsumerSuggestedFoodsResponseDataInner> get data =>
      _$this._data ??= ListBuilder<ConsumerSuggestedFoodsResponseDataInner>();
  set data(ListBuilder<ConsumerSuggestedFoodsResponseDataInner>? data) =>
      _$this._data = data;

  ConsumerSuggestedFoodsResponseBuilder() {
    ConsumerSuggestedFoodsResponse._defaults(this);
  }

  ConsumerSuggestedFoodsResponseBuilder get _$this {
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
  void replace(ConsumerSuggestedFoodsResponse other) {
    _$v = other as _$ConsumerSuggestedFoodsResponse;
  }

  @override
  void update(void Function(ConsumerSuggestedFoodsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerSuggestedFoodsResponse build() => _build();

  _$ConsumerSuggestedFoodsResponse _build() {
    _$ConsumerSuggestedFoodsResponse _$result;
    try {
      _$result = _$v ??
          _$ConsumerSuggestedFoodsResponse._(
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
            r'ConsumerSuggestedFoodsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
