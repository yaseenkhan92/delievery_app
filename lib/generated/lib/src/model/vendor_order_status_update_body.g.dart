// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_order_status_update_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VendorOrderStatusUpdateBodyStatusEnum
    _$vendorOrderStatusUpdateBodyStatusEnum_confirmed =
    const VendorOrderStatusUpdateBodyStatusEnum._('confirmed');
const VendorOrderStatusUpdateBodyStatusEnum
    _$vendorOrderStatusUpdateBodyStatusEnum_processing =
    const VendorOrderStatusUpdateBodyStatusEnum._('processing');
const VendorOrderStatusUpdateBodyStatusEnum
    _$vendorOrderStatusUpdateBodyStatusEnum_handover =
    const VendorOrderStatusUpdateBodyStatusEnum._('handover');
const VendorOrderStatusUpdateBodyStatusEnum
    _$vendorOrderStatusUpdateBodyStatusEnum_delivered =
    const VendorOrderStatusUpdateBodyStatusEnum._('delivered');
const VendorOrderStatusUpdateBodyStatusEnum
    _$vendorOrderStatusUpdateBodyStatusEnum_canceled =
    const VendorOrderStatusUpdateBodyStatusEnum._('canceled');

VendorOrderStatusUpdateBodyStatusEnum
    _$vendorOrderStatusUpdateBodyStatusEnumValueOf(String name) {
  switch (name) {
    case 'confirmed':
      return _$vendorOrderStatusUpdateBodyStatusEnum_confirmed;
    case 'processing':
      return _$vendorOrderStatusUpdateBodyStatusEnum_processing;
    case 'handover':
      return _$vendorOrderStatusUpdateBodyStatusEnum_handover;
    case 'delivered':
      return _$vendorOrderStatusUpdateBodyStatusEnum_delivered;
    case 'canceled':
      return _$vendorOrderStatusUpdateBodyStatusEnum_canceled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VendorOrderStatusUpdateBodyStatusEnum>
    _$vendorOrderStatusUpdateBodyStatusEnumValues = BuiltSet<
        VendorOrderStatusUpdateBodyStatusEnum>(const <VendorOrderStatusUpdateBodyStatusEnum>[
  _$vendorOrderStatusUpdateBodyStatusEnum_confirmed,
  _$vendorOrderStatusUpdateBodyStatusEnum_processing,
  _$vendorOrderStatusUpdateBodyStatusEnum_handover,
  _$vendorOrderStatusUpdateBodyStatusEnum_delivered,
  _$vendorOrderStatusUpdateBodyStatusEnum_canceled,
]);

Serializer<VendorOrderStatusUpdateBodyStatusEnum>
    _$vendorOrderStatusUpdateBodyStatusEnumSerializer =
    _$VendorOrderStatusUpdateBodyStatusEnumSerializer();

class _$VendorOrderStatusUpdateBodyStatusEnumSerializer
    implements PrimitiveSerializer<VendorOrderStatusUpdateBodyStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'confirmed': 'confirmed',
    'processing': 'processing',
    'handover': 'handover',
    'delivered': 'delivered',
    'canceled': 'canceled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'confirmed': 'confirmed',
    'processing': 'processing',
    'handover': 'handover',
    'delivered': 'delivered',
    'canceled': 'canceled',
  };

  @override
  final Iterable<Type> types = const <Type>[
    VendorOrderStatusUpdateBodyStatusEnum
  ];
  @override
  final String wireName = 'VendorOrderStatusUpdateBodyStatusEnum';

  @override
  Object serialize(
          Serializers serializers, VendorOrderStatusUpdateBodyStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VendorOrderStatusUpdateBodyStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VendorOrderStatusUpdateBodyStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$VendorOrderStatusUpdateBody extends VendorOrderStatusUpdateBody {
  @override
  final VendorOrderStatusUpdateBodyStatusEnum status;
  @override
  final String? cancellationReason;

  factory _$VendorOrderStatusUpdateBody(
          [void Function(VendorOrderStatusUpdateBodyBuilder)? updates]) =>
      (VendorOrderStatusUpdateBodyBuilder()..update(updates))._build();

  _$VendorOrderStatusUpdateBody._(
      {required this.status, this.cancellationReason})
      : super._();
  @override
  VendorOrderStatusUpdateBody rebuild(
          void Function(VendorOrderStatusUpdateBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorOrderStatusUpdateBodyBuilder toBuilder() =>
      VendorOrderStatusUpdateBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorOrderStatusUpdateBody &&
        status == other.status &&
        cancellationReason == other.cancellationReason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, cancellationReason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorOrderStatusUpdateBody')
          ..add('status', status)
          ..add('cancellationReason', cancellationReason))
        .toString();
  }
}

class VendorOrderStatusUpdateBodyBuilder
    implements
        Builder<VendorOrderStatusUpdateBody,
            VendorOrderStatusUpdateBodyBuilder> {
  _$VendorOrderStatusUpdateBody? _$v;

  VendorOrderStatusUpdateBodyStatusEnum? _status;
  VendorOrderStatusUpdateBodyStatusEnum? get status => _$this._status;
  set status(VendorOrderStatusUpdateBodyStatusEnum? status) =>
      _$this._status = status;

  String? _cancellationReason;
  String? get cancellationReason => _$this._cancellationReason;
  set cancellationReason(String? cancellationReason) =>
      _$this._cancellationReason = cancellationReason;

  VendorOrderStatusUpdateBodyBuilder() {
    VendorOrderStatusUpdateBody._defaults(this);
  }

  VendorOrderStatusUpdateBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _cancellationReason = $v.cancellationReason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorOrderStatusUpdateBody other) {
    _$v = other as _$VendorOrderStatusUpdateBody;
  }

  @override
  void update(void Function(VendorOrderStatusUpdateBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorOrderStatusUpdateBody build() => _build();

  _$VendorOrderStatusUpdateBody _build() {
    final _$result = _$v ??
        _$VendorOrderStatusUpdateBody._(
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'VendorOrderStatusUpdateBody', 'status'),
          cancellationReason: cancellationReason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
