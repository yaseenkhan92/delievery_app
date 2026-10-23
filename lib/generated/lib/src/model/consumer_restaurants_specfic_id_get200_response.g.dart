// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_restaurants_specfic_id_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerRestaurantsSpecficIdGet200Response
    extends ConsumerRestaurantsSpecficIdGet200Response {
  @override
  final bool? status;
  @override
  final ConsumerRestaurantsSpecficIdGet200ResponseData? data;

  factory _$ConsumerRestaurantsSpecficIdGet200Response(
          [void Function(ConsumerRestaurantsSpecficIdGet200ResponseBuilder)?
              updates]) =>
      (ConsumerRestaurantsSpecficIdGet200ResponseBuilder()..update(updates))
          ._build();

  _$ConsumerRestaurantsSpecficIdGet200Response._({this.status, this.data})
      : super._();
  @override
  ConsumerRestaurantsSpecficIdGet200Response rebuild(
          void Function(ConsumerRestaurantsSpecficIdGet200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerRestaurantsSpecficIdGet200ResponseBuilder toBuilder() =>
      ConsumerRestaurantsSpecficIdGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerRestaurantsSpecficIdGet200Response &&
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
            r'ConsumerRestaurantsSpecficIdGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class ConsumerRestaurantsSpecficIdGet200ResponseBuilder
    implements
        Builder<ConsumerRestaurantsSpecficIdGet200Response,
            ConsumerRestaurantsSpecficIdGet200ResponseBuilder> {
  _$ConsumerRestaurantsSpecficIdGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ConsumerRestaurantsSpecficIdGet200ResponseDataBuilder? _data;
  ConsumerRestaurantsSpecficIdGet200ResponseDataBuilder get data =>
      _$this._data ??= ConsumerRestaurantsSpecficIdGet200ResponseDataBuilder();
  set data(ConsumerRestaurantsSpecficIdGet200ResponseDataBuilder? data) =>
      _$this._data = data;

  ConsumerRestaurantsSpecficIdGet200ResponseBuilder() {
    ConsumerRestaurantsSpecficIdGet200Response._defaults(this);
  }

  ConsumerRestaurantsSpecficIdGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerRestaurantsSpecficIdGet200Response other) {
    _$v = other as _$ConsumerRestaurantsSpecficIdGet200Response;
  }

  @override
  void update(
      void Function(ConsumerRestaurantsSpecficIdGet200ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerRestaurantsSpecficIdGet200Response build() => _build();

  _$ConsumerRestaurantsSpecficIdGet200Response _build() {
    _$ConsumerRestaurantsSpecficIdGet200Response _$result;
    try {
      _$result = _$v ??
          _$ConsumerRestaurantsSpecficIdGet200Response._(
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
            r'ConsumerRestaurantsSpecficIdGet200Response',
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
