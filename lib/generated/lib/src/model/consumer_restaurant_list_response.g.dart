// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_restaurant_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerRestaurantListResponse extends ConsumerRestaurantListResponse {
  @override
  final bool status;
  @override
  final ConsumerRestaurantListResponseData data;

  factory _$ConsumerRestaurantListResponse(
          [void Function(ConsumerRestaurantListResponseBuilder)? updates]) =>
      (ConsumerRestaurantListResponseBuilder()..update(updates))._build();

  _$ConsumerRestaurantListResponse._({required this.status, required this.data})
      : super._();
  @override
  ConsumerRestaurantListResponse rebuild(
          void Function(ConsumerRestaurantListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerRestaurantListResponseBuilder toBuilder() =>
      ConsumerRestaurantListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerRestaurantListResponse &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerRestaurantListResponse')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class ConsumerRestaurantListResponseBuilder
    implements
        Builder<ConsumerRestaurantListResponse,
            ConsumerRestaurantListResponseBuilder> {
  _$ConsumerRestaurantListResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ConsumerRestaurantListResponseDataBuilder? _data;
  ConsumerRestaurantListResponseDataBuilder get data =>
      _$this._data ??= ConsumerRestaurantListResponseDataBuilder();
  set data(ConsumerRestaurantListResponseDataBuilder? data) =>
      _$this._data = data;

  ConsumerRestaurantListResponseBuilder() {
    ConsumerRestaurantListResponse._defaults(this);
  }

  ConsumerRestaurantListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerRestaurantListResponse other) {
    _$v = other as _$ConsumerRestaurantListResponse;
  }

  @override
  void update(void Function(ConsumerRestaurantListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerRestaurantListResponse build() => _build();

  _$ConsumerRestaurantListResponse _build() {
    _$ConsumerRestaurantListResponse _$result;
    try {
      _$result = _$v ??
          _$ConsumerRestaurantListResponse._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ConsumerRestaurantListResponse', 'status'),
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerRestaurantListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
