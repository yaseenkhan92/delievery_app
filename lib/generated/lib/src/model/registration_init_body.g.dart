// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_init_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RegistrationInitBodyRoleEnum _$registrationInitBodyRoleEnum_vendor =
    const RegistrationInitBodyRoleEnum._('vendor');
const RegistrationInitBodyRoleEnum _$registrationInitBodyRoleEnum_deliveryman =
    const RegistrationInitBodyRoleEnum._('deliveryman');

RegistrationInitBodyRoleEnum _$registrationInitBodyRoleEnumValueOf(
    String name) {
  switch (name) {
    case 'vendor':
      return _$registrationInitBodyRoleEnum_vendor;
    case 'deliveryman':
      return _$registrationInitBodyRoleEnum_deliveryman;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RegistrationInitBodyRoleEnum>
    _$registrationInitBodyRoleEnumValues =
    BuiltSet<RegistrationInitBodyRoleEnum>(const <RegistrationInitBodyRoleEnum>[
  _$registrationInitBodyRoleEnum_vendor,
  _$registrationInitBodyRoleEnum_deliveryman,
]);

Serializer<RegistrationInitBodyRoleEnum>
    _$registrationInitBodyRoleEnumSerializer =
    _$RegistrationInitBodyRoleEnumSerializer();

class _$RegistrationInitBodyRoleEnumSerializer
    implements PrimitiveSerializer<RegistrationInitBodyRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'vendor': 'vendor',
    'deliveryman': 'deliveryman',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'vendor': 'vendor',
    'deliveryman': 'deliveryman',
  };

  @override
  final Iterable<Type> types = const <Type>[RegistrationInitBodyRoleEnum];
  @override
  final String wireName = 'RegistrationInitBodyRoleEnum';

  @override
  Object serialize(Serializers serializers, RegistrationInitBodyRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RegistrationInitBodyRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RegistrationInitBodyRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RegistrationInitBody extends RegistrationInitBody {
  @override
  final RegistrationInitBodyRoleEnum role;

  factory _$RegistrationInitBody(
          [void Function(RegistrationInitBodyBuilder)? updates]) =>
      (RegistrationInitBodyBuilder()..update(updates))._build();

  _$RegistrationInitBody._({required this.role}) : super._();
  @override
  RegistrationInitBody rebuild(
          void Function(RegistrationInitBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegistrationInitBodyBuilder toBuilder() =>
      RegistrationInitBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationInitBody && role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegistrationInitBody')
          ..add('role', role))
        .toString();
  }
}

class RegistrationInitBodyBuilder
    implements Builder<RegistrationInitBody, RegistrationInitBodyBuilder> {
  _$RegistrationInitBody? _$v;

  RegistrationInitBodyRoleEnum? _role;
  RegistrationInitBodyRoleEnum? get role => _$this._role;
  set role(RegistrationInitBodyRoleEnum? role) => _$this._role = role;

  RegistrationInitBodyBuilder() {
    RegistrationInitBody._defaults(this);
  }

  RegistrationInitBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationInitBody other) {
    _$v = other as _$RegistrationInitBody;
  }

  @override
  void update(void Function(RegistrationInitBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegistrationInitBody build() => _build();

  _$RegistrationInitBody _build() {
    final _$result = _$v ??
        _$RegistrationInitBody._(
          role: BuiltValueNullFieldError.checkNotNull(
              role, r'RegistrationInitBody', 'role'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
