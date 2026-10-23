// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_favourite_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerFavouriteListResponse extends ConsumerFavouriteListResponse {
  @override
  final bool status;
  @override
  final String msg;
  @override
  final ConsumerFavouriteListData data;

  factory _$ConsumerFavouriteListResponse(
          [void Function(ConsumerFavouriteListResponseBuilder)? updates]) =>
      (ConsumerFavouriteListResponseBuilder()..update(updates))._build();

  _$ConsumerFavouriteListResponse._(
      {required this.status, required this.msg, required this.data})
      : super._();
  @override
  ConsumerFavouriteListResponse rebuild(
          void Function(ConsumerFavouriteListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerFavouriteListResponseBuilder toBuilder() =>
      ConsumerFavouriteListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerFavouriteListResponse &&
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
    return (newBuiltValueToStringHelper(r'ConsumerFavouriteListResponse')
          ..add('status', status)
          ..add('msg', msg)
          ..add('data', data))
        .toString();
  }
}

class ConsumerFavouriteListResponseBuilder
    implements
        Builder<ConsumerFavouriteListResponse,
            ConsumerFavouriteListResponseBuilder> {
  _$ConsumerFavouriteListResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  ConsumerFavouriteListDataBuilder? _data;
  ConsumerFavouriteListDataBuilder get data =>
      _$this._data ??= ConsumerFavouriteListDataBuilder();
  set data(ConsumerFavouriteListDataBuilder? data) => _$this._data = data;

  ConsumerFavouriteListResponseBuilder() {
    ConsumerFavouriteListResponse._defaults(this);
  }

  ConsumerFavouriteListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerFavouriteListResponse other) {
    _$v = other as _$ConsumerFavouriteListResponse;
  }

  @override
  void update(void Function(ConsumerFavouriteListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerFavouriteListResponse build() => _build();

  _$ConsumerFavouriteListResponse _build() {
    _$ConsumerFavouriteListResponse _$result;
    try {
      _$result = _$v ??
          _$ConsumerFavouriteListResponse._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ConsumerFavouriteListResponse', 'status'),
            msg: BuiltValueNullFieldError.checkNotNull(
                msg, r'ConsumerFavouriteListResponse', 'msg'),
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerFavouriteListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
