// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_order_cancel_body_order_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerOrderCancelBodyOrderId extends ConsumerOrderCancelBodyOrderId {
  @override
  final OneOf oneOf;

  factory _$ConsumerOrderCancelBodyOrderId(
          [void Function(ConsumerOrderCancelBodyOrderIdBuilder)? updates]) =>
      (ConsumerOrderCancelBodyOrderIdBuilder()..update(updates))._build();

  _$ConsumerOrderCancelBodyOrderId._({required this.oneOf}) : super._();
  @override
  ConsumerOrderCancelBodyOrderId rebuild(
          void Function(ConsumerOrderCancelBodyOrderIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerOrderCancelBodyOrderIdBuilder toBuilder() =>
      ConsumerOrderCancelBodyOrderIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerOrderCancelBodyOrderId && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerOrderCancelBodyOrderId')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ConsumerOrderCancelBodyOrderIdBuilder
    implements
        Builder<ConsumerOrderCancelBodyOrderId,
            ConsumerOrderCancelBodyOrderIdBuilder> {
  _$ConsumerOrderCancelBodyOrderId? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ConsumerOrderCancelBodyOrderIdBuilder() {
    ConsumerOrderCancelBodyOrderId._defaults(this);
  }

  ConsumerOrderCancelBodyOrderIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerOrderCancelBodyOrderId other) {
    _$v = other as _$ConsumerOrderCancelBodyOrderId;
  }

  @override
  void update(void Function(ConsumerOrderCancelBodyOrderIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerOrderCancelBodyOrderId build() => _build();

  _$ConsumerOrderCancelBodyOrderId _build() {
    final _$result = _$v ??
        _$ConsumerOrderCancelBodyOrderId._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ConsumerOrderCancelBodyOrderId', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
