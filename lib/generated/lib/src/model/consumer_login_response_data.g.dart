// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_login_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConsumerLoginResponseDataIsPersonalInfoEnum
    _$consumerLoginResponseDataIsPersonalInfoEnum_number0 =
    const ConsumerLoginResponseDataIsPersonalInfoEnum._('number0');
const ConsumerLoginResponseDataIsPersonalInfoEnum
    _$consumerLoginResponseDataIsPersonalInfoEnum_number1 =
    const ConsumerLoginResponseDataIsPersonalInfoEnum._('number1');

ConsumerLoginResponseDataIsPersonalInfoEnum
    _$consumerLoginResponseDataIsPersonalInfoEnumValueOf(String name) {
  switch (name) {
    case 'number0':
      return _$consumerLoginResponseDataIsPersonalInfoEnum_number0;
    case 'number1':
      return _$consumerLoginResponseDataIsPersonalInfoEnum_number1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConsumerLoginResponseDataIsPersonalInfoEnum>
    _$consumerLoginResponseDataIsPersonalInfoEnumValues = BuiltSet<
        ConsumerLoginResponseDataIsPersonalInfoEnum>(const <ConsumerLoginResponseDataIsPersonalInfoEnum>[
  _$consumerLoginResponseDataIsPersonalInfoEnum_number0,
  _$consumerLoginResponseDataIsPersonalInfoEnum_number1,
]);

Serializer<ConsumerLoginResponseDataIsPersonalInfoEnum>
    _$consumerLoginResponseDataIsPersonalInfoEnumSerializer =
    _$ConsumerLoginResponseDataIsPersonalInfoEnumSerializer();

class _$ConsumerLoginResponseDataIsPersonalInfoEnumSerializer
    implements
        PrimitiveSerializer<ConsumerLoginResponseDataIsPersonalInfoEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number0': 0,
    'number1': 1,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    0: 'number0',
    1: 'number1',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ConsumerLoginResponseDataIsPersonalInfoEnum
  ];
  @override
  final String wireName = 'ConsumerLoginResponseDataIsPersonalInfoEnum';

  @override
  Object serialize(Serializers serializers,
          ConsumerLoginResponseDataIsPersonalInfoEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsumerLoginResponseDataIsPersonalInfoEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsumerLoginResponseDataIsPersonalInfoEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConsumerLoginResponseData extends ConsumerLoginResponseData {
  @override
  final OneOf oneOf;

  factory _$ConsumerLoginResponseData(
          [void Function(ConsumerLoginResponseDataBuilder)? updates]) =>
      (ConsumerLoginResponseDataBuilder()..update(updates))._build();

  _$ConsumerLoginResponseData._({required this.oneOf}) : super._();
  @override
  ConsumerLoginResponseData rebuild(
          void Function(ConsumerLoginResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerLoginResponseDataBuilder toBuilder() =>
      ConsumerLoginResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerLoginResponseData && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'ConsumerLoginResponseData')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ConsumerLoginResponseDataBuilder
    implements
        Builder<ConsumerLoginResponseData, ConsumerLoginResponseDataBuilder> {
  _$ConsumerLoginResponseData? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ConsumerLoginResponseDataBuilder() {
    ConsumerLoginResponseData._defaults(this);
  }

  ConsumerLoginResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerLoginResponseData other) {
    _$v = other as _$ConsumerLoginResponseData;
  }

  @override
  void update(void Function(ConsumerLoginResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerLoginResponseData build() => _build();

  _$ConsumerLoginResponseData _build() {
    final _$result = _$v ??
        _$ConsumerLoginResponseData._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ConsumerLoginResponseData', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
