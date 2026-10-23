// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_order_track_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerOrderTrackResponse extends ConsumerOrderTrackResponse {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final ConsumerOrderTrackData? data;

  factory _$ConsumerOrderTrackResponse(
          [void Function(ConsumerOrderTrackResponseBuilder)? updates]) =>
      (ConsumerOrderTrackResponseBuilder()..update(updates))._build();

  _$ConsumerOrderTrackResponse._({this.status, this.msg, this.data})
      : super._();
  @override
  ConsumerOrderTrackResponse rebuild(
          void Function(ConsumerOrderTrackResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerOrderTrackResponseBuilder toBuilder() =>
      ConsumerOrderTrackResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerOrderTrackResponse &&
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
    return (newBuiltValueToStringHelper(r'ConsumerOrderTrackResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class ConsumerOrderTrackResponseBuilder
    implements
        Builder<ConsumerOrderTrackResponse, ConsumerOrderTrackResponseBuilder> {
  _$ConsumerOrderTrackResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  ConsumerOrderTrackDataBuilder? _data;
  ConsumerOrderTrackDataBuilder get data =>
      _$this._data ??= ConsumerOrderTrackDataBuilder();
  set data(ConsumerOrderTrackDataBuilder? data) => _$this._data = data;

  ConsumerOrderTrackResponseBuilder() {
    ConsumerOrderTrackResponse._defaults(this);
  }

  ConsumerOrderTrackResponseBuilder get _$this {
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
  void replace(ConsumerOrderTrackResponse other) {
    _$v = other as _$ConsumerOrderTrackResponse;
  }

  @override
  void update(void Function(ConsumerOrderTrackResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerOrderTrackResponse build() => _build();

  _$ConsumerOrderTrackResponse _build() {
    _$ConsumerOrderTrackResponse _$result;
    try {
      _$result = _$v ??
          _$ConsumerOrderTrackResponse._(
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
            r'ConsumerOrderTrackResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
