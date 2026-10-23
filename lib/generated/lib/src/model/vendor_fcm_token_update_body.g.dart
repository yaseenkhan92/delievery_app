// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_fcm_token_update_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VendorFcmTokenUpdateBodyPlatformEnum
    _$vendorFcmTokenUpdateBodyPlatformEnum_mobile =
    const VendorFcmTokenUpdateBodyPlatformEnum._('mobile');
const VendorFcmTokenUpdateBodyPlatformEnum
    _$vendorFcmTokenUpdateBodyPlatformEnum_web =
    const VendorFcmTokenUpdateBodyPlatformEnum._('web');

VendorFcmTokenUpdateBodyPlatformEnum
    _$vendorFcmTokenUpdateBodyPlatformEnumValueOf(String name) {
  switch (name) {
    case 'mobile':
      return _$vendorFcmTokenUpdateBodyPlatformEnum_mobile;
    case 'web':
      return _$vendorFcmTokenUpdateBodyPlatformEnum_web;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VendorFcmTokenUpdateBodyPlatformEnum>
    _$vendorFcmTokenUpdateBodyPlatformEnumValues = BuiltSet<
        VendorFcmTokenUpdateBodyPlatformEnum>(const <VendorFcmTokenUpdateBodyPlatformEnum>[
  _$vendorFcmTokenUpdateBodyPlatformEnum_mobile,
  _$vendorFcmTokenUpdateBodyPlatformEnum_web,
]);

Serializer<VendorFcmTokenUpdateBodyPlatformEnum>
    _$vendorFcmTokenUpdateBodyPlatformEnumSerializer =
    _$VendorFcmTokenUpdateBodyPlatformEnumSerializer();

class _$VendorFcmTokenUpdateBodyPlatformEnumSerializer
    implements PrimitiveSerializer<VendorFcmTokenUpdateBodyPlatformEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mobile': 'mobile',
    'web': 'web',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'mobile': 'mobile',
    'web': 'web',
  };

  @override
  final Iterable<Type> types = const <Type>[
    VendorFcmTokenUpdateBodyPlatformEnum
  ];
  @override
  final String wireName = 'VendorFcmTokenUpdateBodyPlatformEnum';

  @override
  Object serialize(
          Serializers serializers, VendorFcmTokenUpdateBodyPlatformEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VendorFcmTokenUpdateBodyPlatformEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VendorFcmTokenUpdateBodyPlatformEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$VendorFcmTokenUpdateBody extends VendorFcmTokenUpdateBody {
  @override
  final String fcmToken;
  @override
  final VendorFcmTokenUpdateBodyPlatformEnum? platform;

  factory _$VendorFcmTokenUpdateBody(
          [void Function(VendorFcmTokenUpdateBodyBuilder)? updates]) =>
      (VendorFcmTokenUpdateBodyBuilder()..update(updates))._build();

  _$VendorFcmTokenUpdateBody._({required this.fcmToken, this.platform})
      : super._();
  @override
  VendorFcmTokenUpdateBody rebuild(
          void Function(VendorFcmTokenUpdateBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorFcmTokenUpdateBodyBuilder toBuilder() =>
      VendorFcmTokenUpdateBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorFcmTokenUpdateBody &&
        fcmToken == other.fcmToken &&
        platform == other.platform;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fcmToken.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendorFcmTokenUpdateBody')
          ..add('fcmToken', fcmToken)
          ..add('platform', platform))
        .toString();
  }
}

class VendorFcmTokenUpdateBodyBuilder
    implements
        Builder<VendorFcmTokenUpdateBody, VendorFcmTokenUpdateBodyBuilder> {
  _$VendorFcmTokenUpdateBody? _$v;

  String? _fcmToken;
  String? get fcmToken => _$this._fcmToken;
  set fcmToken(String? fcmToken) => _$this._fcmToken = fcmToken;

  VendorFcmTokenUpdateBodyPlatformEnum? _platform;
  VendorFcmTokenUpdateBodyPlatformEnum? get platform => _$this._platform;
  set platform(VendorFcmTokenUpdateBodyPlatformEnum? platform) =>
      _$this._platform = platform;

  VendorFcmTokenUpdateBodyBuilder() {
    VendorFcmTokenUpdateBody._defaults(this);
  }

  VendorFcmTokenUpdateBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fcmToken = $v.fcmToken;
      _platform = $v.platform;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorFcmTokenUpdateBody other) {
    _$v = other as _$VendorFcmTokenUpdateBody;
  }

  @override
  void update(void Function(VendorFcmTokenUpdateBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendorFcmTokenUpdateBody build() => _build();

  _$VendorFcmTokenUpdateBody _build() {
    final _$result = _$v ??
        _$VendorFcmTokenUpdateBody._(
          fcmToken: BuiltValueNullFieldError.checkNotNull(
              fcmToken, r'VendorFcmTokenUpdateBody', 'fcmToken'),
          platform: platform,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
