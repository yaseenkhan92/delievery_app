// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_restaurants_id_foods_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerRestaurantsIdFoodsGet200Response
    extends ConsumerRestaurantsIdFoodsGet200Response {
  @override
  final bool? status;
  @override
  final ConsumerRestaurantsIdFoodsGet200ResponseData? data;

  factory _$ConsumerRestaurantsIdFoodsGet200Response(
          [void Function(ConsumerRestaurantsIdFoodsGet200ResponseBuilder)?
              updates]) =>
      (ConsumerRestaurantsIdFoodsGet200ResponseBuilder()..update(updates))
          ._build();

  _$ConsumerRestaurantsIdFoodsGet200Response._({this.status, this.data})
      : super._();
  @override
  ConsumerRestaurantsIdFoodsGet200Response rebuild(
          void Function(ConsumerRestaurantsIdFoodsGet200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerRestaurantsIdFoodsGet200ResponseBuilder toBuilder() =>
      ConsumerRestaurantsIdFoodsGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerRestaurantsIdFoodsGet200Response &&
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
    return (newBuiltValueToStringHelper(
            r'ConsumerRestaurantsIdFoodsGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class ConsumerRestaurantsIdFoodsGet200ResponseBuilder
    implements
        Builder<ConsumerRestaurantsIdFoodsGet200Response,
            ConsumerRestaurantsIdFoodsGet200ResponseBuilder> {
  _$ConsumerRestaurantsIdFoodsGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ConsumerRestaurantsIdFoodsGet200ResponseDataBuilder? _data;
  ConsumerRestaurantsIdFoodsGet200ResponseDataBuilder get data =>
      _$this._data ??= ConsumerRestaurantsIdFoodsGet200ResponseDataBuilder();
  set data(ConsumerRestaurantsIdFoodsGet200ResponseDataBuilder? data) =>
      _$this._data = data;

  ConsumerRestaurantsIdFoodsGet200ResponseBuilder() {
    ConsumerRestaurantsIdFoodsGet200Response._defaults(this);
  }

  ConsumerRestaurantsIdFoodsGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerRestaurantsIdFoodsGet200Response other) {
    _$v = other as _$ConsumerRestaurantsIdFoodsGet200Response;
  }

  @override
  void update(
      void Function(ConsumerRestaurantsIdFoodsGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerRestaurantsIdFoodsGet200Response build() => _build();

  _$ConsumerRestaurantsIdFoodsGet200Response _build() {
    _$ConsumerRestaurantsIdFoodsGet200Response _$result;
    try {
      _$result = _$v ??
          _$ConsumerRestaurantsIdFoodsGet200Response._(
            status: status,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerRestaurantsIdFoodsGet200Response',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
