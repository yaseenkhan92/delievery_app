// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_place_order_error_errors_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerPlaceOrderErrorErrorsInner
    extends ConsumerPlaceOrderErrorErrorsInner {
  @override
  final String? code;
  @override
  final String? message;

  factory _$ConsumerPlaceOrderErrorErrorsInner(
          [void Function(ConsumerPlaceOrderErrorErrorsInnerBuilder)?
              updates]) =>
      (ConsumerPlaceOrderErrorErrorsInnerBuilder()..update(updates))._build();

  _$ConsumerPlaceOrderErrorErrorsInner._({this.code, this.message}) : super._();
  @override
  ConsumerPlaceOrderErrorErrorsInner rebuild(
          void Function(ConsumerPlaceOrderErrorErrorsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerPlaceOrderErrorErrorsInnerBuilder toBuilder() =>
      ConsumerPlaceOrderErrorErrorsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerPlaceOrderErrorErrorsInner &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerPlaceOrderErrorErrorsInner')
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class ConsumerPlaceOrderErrorErrorsInnerBuilder
    implements
        Builder<ConsumerPlaceOrderErrorErrorsInner,
            ConsumerPlaceOrderErrorErrorsInnerBuilder> {
  _$ConsumerPlaceOrderErrorErrorsInner? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ConsumerPlaceOrderErrorErrorsInnerBuilder() {
    ConsumerPlaceOrderErrorErrorsInner._defaults(this);
  }

  ConsumerPlaceOrderErrorErrorsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerPlaceOrderErrorErrorsInner other) {
    _$v = other as _$ConsumerPlaceOrderErrorErrorsInner;
  }

  @override
  void update(
      void Function(ConsumerPlaceOrderErrorErrorsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerPlaceOrderErrorErrorsInner build() => _build();

  _$ConsumerPlaceOrderErrorErrorsInner _build() {
    final _$result = _$v ??
        _$ConsumerPlaceOrderErrorErrorsInner._(
          code: code,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
