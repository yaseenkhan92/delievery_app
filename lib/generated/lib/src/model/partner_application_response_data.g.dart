// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_application_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PartnerApplicationResponseDataApplicationStatusEnum
    _$partnerApplicationResponseDataApplicationStatusEnum_pending =
    const PartnerApplicationResponseDataApplicationStatusEnum._('pending');

PartnerApplicationResponseDataApplicationStatusEnum
    _$partnerApplicationResponseDataApplicationStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$partnerApplicationResponseDataApplicationStatusEnum_pending;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PartnerApplicationResponseDataApplicationStatusEnum>
    _$partnerApplicationResponseDataApplicationStatusEnumValues = BuiltSet<
        PartnerApplicationResponseDataApplicationStatusEnum>(const <PartnerApplicationResponseDataApplicationStatusEnum>[
  _$partnerApplicationResponseDataApplicationStatusEnum_pending,
]);

Serializer<PartnerApplicationResponseDataApplicationStatusEnum>
    _$partnerApplicationResponseDataApplicationStatusEnumSerializer =
    _$PartnerApplicationResponseDataApplicationStatusEnumSerializer();

class _$PartnerApplicationResponseDataApplicationStatusEnumSerializer
    implements
        PrimitiveSerializer<
            PartnerApplicationResponseDataApplicationStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PartnerApplicationResponseDataApplicationStatusEnum
  ];
  @override
  final String wireName = 'PartnerApplicationResponseDataApplicationStatusEnum';

  @override
  Object serialize(Serializers serializers,
          PartnerApplicationResponseDataApplicationStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PartnerApplicationResponseDataApplicationStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PartnerApplicationResponseDataApplicationStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PartnerApplicationResponseData extends PartnerApplicationResponseData {
  @override
  final PartnerApplicationResponseDataApplicationStatusEnum? applicationStatus;
  @override
  final String? cloudflareId;

  factory _$PartnerApplicationResponseData(
          [void Function(PartnerApplicationResponseDataBuilder)? updates]) =>
      (PartnerApplicationResponseDataBuilder()..update(updates))._build();

  _$PartnerApplicationResponseData._(
      {this.applicationStatus, this.cloudflareId})
      : super._();
  @override
  PartnerApplicationResponseData rebuild(
          void Function(PartnerApplicationResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PartnerApplicationResponseDataBuilder toBuilder() =>
      PartnerApplicationResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PartnerApplicationResponseData &&
        applicationStatus == other.applicationStatus &&
        cloudflareId == other.cloudflareId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, applicationStatus.hashCode);
    _$hash = $jc(_$hash, cloudflareId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PartnerApplicationResponseData')
          ..add('applicationStatus', applicationStatus)
          ..add('cloudflareId', cloudflareId))
        .toString();
  }
}

class PartnerApplicationResponseDataBuilder
    implements
        Builder<PartnerApplicationResponseData,
            PartnerApplicationResponseDataBuilder> {
  _$PartnerApplicationResponseData? _$v;

  PartnerApplicationResponseDataApplicationStatusEnum? _applicationStatus;
  PartnerApplicationResponseDataApplicationStatusEnum? get applicationStatus =>
      _$this._applicationStatus;
  set applicationStatus(
          PartnerApplicationResponseDataApplicationStatusEnum?
              applicationStatus) =>
      _$this._applicationStatus = applicationStatus;

  String? _cloudflareId;
  String? get cloudflareId => _$this._cloudflareId;
  set cloudflareId(String? cloudflareId) => _$this._cloudflareId = cloudflareId;

  PartnerApplicationResponseDataBuilder() {
    PartnerApplicationResponseData._defaults(this);
  }

  PartnerApplicationResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applicationStatus = $v.applicationStatus;
      _cloudflareId = $v.cloudflareId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PartnerApplicationResponseData other) {
    _$v = other as _$PartnerApplicationResponseData;
  }

  @override
  void update(void Function(PartnerApplicationResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PartnerApplicationResponseData build() => _build();

  _$PartnerApplicationResponseData _build() {
    final _$result = _$v ??
        _$PartnerApplicationResponseData._(
          applicationStatus: applicationStatus,
          cloudflareId: cloudflareId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
