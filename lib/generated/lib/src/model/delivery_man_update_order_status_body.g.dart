// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_update_order_status_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeliveryManUpdateOrderStatusBodyStatusEnum
    _$deliveryManUpdateOrderStatusBodyStatusEnum_confirmed =
    const DeliveryManUpdateOrderStatusBodyStatusEnum._('confirmed');
const DeliveryManUpdateOrderStatusBodyStatusEnum
    _$deliveryManUpdateOrderStatusBodyStatusEnum_canceled =
    const DeliveryManUpdateOrderStatusBodyStatusEnum._('canceled');
const DeliveryManUpdateOrderStatusBodyStatusEnum
    _$deliveryManUpdateOrderStatusBodyStatusEnum_pickedUp =
    const DeliveryManUpdateOrderStatusBodyStatusEnum._('pickedUp');
const DeliveryManUpdateOrderStatusBodyStatusEnum
    _$deliveryManUpdateOrderStatusBodyStatusEnum_delivered =
    const DeliveryManUpdateOrderStatusBodyStatusEnum._('delivered');
const DeliveryManUpdateOrderStatusBodyStatusEnum
    _$deliveryManUpdateOrderStatusBodyStatusEnum_handover =
    const DeliveryManUpdateOrderStatusBodyStatusEnum._('handover');

DeliveryManUpdateOrderStatusBodyStatusEnum
    _$deliveryManUpdateOrderStatusBodyStatusEnumValueOf(String name) {
  switch (name) {
    case 'confirmed':
      return _$deliveryManUpdateOrderStatusBodyStatusEnum_confirmed;
    case 'canceled':
      return _$deliveryManUpdateOrderStatusBodyStatusEnum_canceled;
    case 'pickedUp':
      return _$deliveryManUpdateOrderStatusBodyStatusEnum_pickedUp;
    case 'delivered':
      return _$deliveryManUpdateOrderStatusBodyStatusEnum_delivered;
    case 'handover':
      return _$deliveryManUpdateOrderStatusBodyStatusEnum_handover;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DeliveryManUpdateOrderStatusBodyStatusEnum>
    _$deliveryManUpdateOrderStatusBodyStatusEnumValues = BuiltSet<
        DeliveryManUpdateOrderStatusBodyStatusEnum>(const <DeliveryManUpdateOrderStatusBodyStatusEnum>[
  _$deliveryManUpdateOrderStatusBodyStatusEnum_confirmed,
  _$deliveryManUpdateOrderStatusBodyStatusEnum_canceled,
  _$deliveryManUpdateOrderStatusBodyStatusEnum_pickedUp,
  _$deliveryManUpdateOrderStatusBodyStatusEnum_delivered,
  _$deliveryManUpdateOrderStatusBodyStatusEnum_handover,
]);

Serializer<DeliveryManUpdateOrderStatusBodyStatusEnum>
    _$deliveryManUpdateOrderStatusBodyStatusEnumSerializer =
    _$DeliveryManUpdateOrderStatusBodyStatusEnumSerializer();

class _$DeliveryManUpdateOrderStatusBodyStatusEnumSerializer
    implements PrimitiveSerializer<DeliveryManUpdateOrderStatusBodyStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'confirmed': 'confirmed',
    'canceled': 'canceled',
    'pickedUp': 'picked_up',
    'delivered': 'delivered',
    'handover': 'handover',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'confirmed': 'confirmed',
    'canceled': 'canceled',
    'picked_up': 'pickedUp',
    'delivered': 'delivered',
    'handover': 'handover',
  };

  @override
  final Iterable<Type> types = const <Type>[
    DeliveryManUpdateOrderStatusBodyStatusEnum
  ];
  @override
  final String wireName = 'DeliveryManUpdateOrderStatusBodyStatusEnum';

  @override
  Object serialize(Serializers serializers,
          DeliveryManUpdateOrderStatusBodyStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DeliveryManUpdateOrderStatusBodyStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DeliveryManUpdateOrderStatusBodyStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DeliveryManUpdateOrderStatusBody
    extends DeliveryManUpdateOrderStatusBody {
  @override
  final DeliveryManUpdateOrderStatusBodyStatusEnum status;
  @override
  final String? reason;

  factory _$DeliveryManUpdateOrderStatusBody(
          [void Function(DeliveryManUpdateOrderStatusBodyBuilder)? updates]) =>
      (DeliveryManUpdateOrderStatusBodyBuilder()..update(updates))._build();

  _$DeliveryManUpdateOrderStatusBody._({required this.status, this.reason})
      : super._();
  @override
  DeliveryManUpdateOrderStatusBody rebuild(
          void Function(DeliveryManUpdateOrderStatusBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManUpdateOrderStatusBodyBuilder toBuilder() =>
      DeliveryManUpdateOrderStatusBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManUpdateOrderStatusBody &&
        status == other.status &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryManUpdateOrderStatusBody')
          ..add('status', status)
          ..add('reason', reason))
        .toString();
  }
}

class DeliveryManUpdateOrderStatusBodyBuilder
    implements
        Builder<DeliveryManUpdateOrderStatusBody,
            DeliveryManUpdateOrderStatusBodyBuilder> {
  _$DeliveryManUpdateOrderStatusBody? _$v;

  DeliveryManUpdateOrderStatusBodyStatusEnum? _status;
  DeliveryManUpdateOrderStatusBodyStatusEnum? get status => _$this._status;
  set status(DeliveryManUpdateOrderStatusBodyStatusEnum? status) =>
      _$this._status = status;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  DeliveryManUpdateOrderStatusBodyBuilder() {
    DeliveryManUpdateOrderStatusBody._defaults(this);
  }

  DeliveryManUpdateOrderStatusBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManUpdateOrderStatusBody other) {
    _$v = other as _$DeliveryManUpdateOrderStatusBody;
  }

  @override
  void update(void Function(DeliveryManUpdateOrderStatusBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManUpdateOrderStatusBody build() => _build();

  _$DeliveryManUpdateOrderStatusBody _build() {
    final _$result = _$v ??
        _$DeliveryManUpdateOrderStatusBody._(
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'DeliveryManUpdateOrderStatusBody', 'status'),
          reason: reason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
