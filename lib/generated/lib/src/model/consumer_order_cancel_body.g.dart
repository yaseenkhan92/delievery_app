// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_order_cancel_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerOrderCancelBody extends ConsumerOrderCancelBody {
  @override
  final ConsumerOrderCancelBodyOrderId orderId;
  @override
  final String reason;
  @override
  final int? guestId;
  @override
  final bool? isGuest;

  factory _$ConsumerOrderCancelBody(
          [void Function(ConsumerOrderCancelBodyBuilder)? updates]) =>
      (ConsumerOrderCancelBodyBuilder()..update(updates))._build();

  _$ConsumerOrderCancelBody._(
      {required this.orderId, required this.reason, this.guestId, this.isGuest})
      : super._();
  @override
  ConsumerOrderCancelBody rebuild(
          void Function(ConsumerOrderCancelBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerOrderCancelBodyBuilder toBuilder() =>
      ConsumerOrderCancelBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerOrderCancelBody &&
        orderId == other.orderId &&
        reason == other.reason &&
        guestId == other.guestId &&
        isGuest == other.isGuest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, guestId.hashCode);
    _$hash = $jc(_$hash, isGuest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerOrderCancelBody')
          ..add('orderId', orderId)
          ..add('reason', reason)
          ..add('guestId', guestId)
          ..add('isGuest', isGuest))
        .toString();
  }
}

class ConsumerOrderCancelBodyBuilder
    implements
        Builder<ConsumerOrderCancelBody, ConsumerOrderCancelBodyBuilder> {
  _$ConsumerOrderCancelBody? _$v;

  ConsumerOrderCancelBodyOrderIdBuilder? _orderId;
  ConsumerOrderCancelBodyOrderIdBuilder get orderId =>
      _$this._orderId ??= ConsumerOrderCancelBodyOrderIdBuilder();
  set orderId(ConsumerOrderCancelBodyOrderIdBuilder? orderId) =>
      _$this._orderId = orderId;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  int? _guestId;
  int? get guestId => _$this._guestId;
  set guestId(int? guestId) => _$this._guestId = guestId;

  bool? _isGuest;
  bool? get isGuest => _$this._isGuest;
  set isGuest(bool? isGuest) => _$this._isGuest = isGuest;

  ConsumerOrderCancelBodyBuilder() {
    ConsumerOrderCancelBody._defaults(this);
  }

  ConsumerOrderCancelBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId.toBuilder();
      _reason = $v.reason;
      _guestId = $v.guestId;
      _isGuest = $v.isGuest;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerOrderCancelBody other) {
    _$v = other as _$ConsumerOrderCancelBody;
  }

  @override
  void update(void Function(ConsumerOrderCancelBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerOrderCancelBody build() => _build();

  _$ConsumerOrderCancelBody _build() {
    _$ConsumerOrderCancelBody _$result;
    try {
      _$result = _$v ??
          _$ConsumerOrderCancelBody._(
            orderId: orderId.build(),
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, r'ConsumerOrderCancelBody', 'reason'),
            guestId: guestId,
            isGuest: isGuest,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'orderId';
        orderId.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerOrderCancelBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
