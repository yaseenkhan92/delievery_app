// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_man_order_status_update_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryManOrderStatusUpdateResponseData
    extends DeliveryManOrderStatusUpdateResponseData {
  @override
  final String? id;
  @override
  final String? orderStatus;

  factory _$DeliveryManOrderStatusUpdateResponseData(
          [void Function(DeliveryManOrderStatusUpdateResponseDataBuilder)?
              updates]) =>
      (DeliveryManOrderStatusUpdateResponseDataBuilder()..update(updates))
          ._build();

  _$DeliveryManOrderStatusUpdateResponseData._({this.id, this.orderStatus})
      : super._();
  @override
  DeliveryManOrderStatusUpdateResponseData rebuild(
          void Function(DeliveryManOrderStatusUpdateResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryManOrderStatusUpdateResponseDataBuilder toBuilder() =>
      DeliveryManOrderStatusUpdateResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryManOrderStatusUpdateResponseData &&
        id == other.id &&
        orderStatus == other.orderStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, orderStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'DeliveryManOrderStatusUpdateResponseData')
          ..add('id', id)
          ..add('orderStatus', orderStatus))
        .toString();
  }
}

class DeliveryManOrderStatusUpdateResponseDataBuilder
    implements
        Builder<DeliveryManOrderStatusUpdateResponseData,
            DeliveryManOrderStatusUpdateResponseDataBuilder> {
  _$DeliveryManOrderStatusUpdateResponseData? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _orderStatus;
  String? get orderStatus => _$this._orderStatus;
  set orderStatus(String? orderStatus) => _$this._orderStatus = orderStatus;

  DeliveryManOrderStatusUpdateResponseDataBuilder() {
    DeliveryManOrderStatusUpdateResponseData._defaults(this);
  }

  DeliveryManOrderStatusUpdateResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _orderStatus = $v.orderStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryManOrderStatusUpdateResponseData other) {
    _$v = other as _$DeliveryManOrderStatusUpdateResponseData;
  }

  @override
  void update(
      void Function(DeliveryManOrderStatusUpdateResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryManOrderStatusUpdateResponseData build() => _build();

  _$DeliveryManOrderStatusUpdateResponseData _build() {
    final _$result = _$v ??
        _$DeliveryManOrderStatusUpdateResponseData._(
          id: id,
          orderStatus: orderStatus,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
