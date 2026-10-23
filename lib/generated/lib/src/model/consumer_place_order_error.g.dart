// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_place_order_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerPlaceOrderError extends ConsumerPlaceOrderError {
  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final BuiltList<ConsumerPlaceOrderErrorErrorsInner>? errors;

  factory _$ConsumerPlaceOrderError(
          [void Function(ConsumerPlaceOrderErrorBuilder)? updates]) =>
      (ConsumerPlaceOrderErrorBuilder()..update(updates))._build();

  _$ConsumerPlaceOrderError._({this.status, this.msg, this.errors}) : super._();
  @override
  ConsumerPlaceOrderError rebuild(
          void Function(ConsumerPlaceOrderErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerPlaceOrderErrorBuilder toBuilder() =>
      ConsumerPlaceOrderErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerPlaceOrderError &&
        status == other.status &&
        msg == other.msg &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerPlaceOrderError')
          ..add('status', status)
          ..add('msg', msg)
          ..add('errors', errors))
        .toString();
  }
}

class ConsumerPlaceOrderErrorBuilder
    implements
        Builder<ConsumerPlaceOrderError, ConsumerPlaceOrderErrorBuilder> {
  _$ConsumerPlaceOrderError? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  ListBuilder<ConsumerPlaceOrderErrorErrorsInner>? _errors;
  ListBuilder<ConsumerPlaceOrderErrorErrorsInner> get errors =>
      _$this._errors ??= ListBuilder<ConsumerPlaceOrderErrorErrorsInner>();
  set errors(ListBuilder<ConsumerPlaceOrderErrorErrorsInner>? errors) =>
      _$this._errors = errors;

  ConsumerPlaceOrderErrorBuilder() {
    ConsumerPlaceOrderError._defaults(this);
  }

  ConsumerPlaceOrderErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _msg = $v.msg;
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerPlaceOrderError other) {
    _$v = other as _$ConsumerPlaceOrderError;
  }

  @override
  void update(void Function(ConsumerPlaceOrderErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerPlaceOrderError build() => _build();

  _$ConsumerPlaceOrderError _build() {
    _$ConsumerPlaceOrderError _$result;
    try {
      _$result = _$v ??
          _$ConsumerPlaceOrderError._(
            status: status,
            msg: msg,
            errors: _errors?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerPlaceOrderError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
