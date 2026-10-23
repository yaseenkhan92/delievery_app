// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_restaurants_popular_get_zone_id_parameter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerRestaurantsPopularGetZoneIdParameter
    extends ConsumerRestaurantsPopularGetZoneIdParameter {
  @override
  final OneOf oneOf;

  factory _$ConsumerRestaurantsPopularGetZoneIdParameter(
          [void Function(ConsumerRestaurantsPopularGetZoneIdParameterBuilder)?
              updates]) =>
      (ConsumerRestaurantsPopularGetZoneIdParameterBuilder()..update(updates))
          ._build();

  _$ConsumerRestaurantsPopularGetZoneIdParameter._({required this.oneOf})
      : super._();
  @override
  ConsumerRestaurantsPopularGetZoneIdParameter rebuild(
          void Function(ConsumerRestaurantsPopularGetZoneIdParameterBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerRestaurantsPopularGetZoneIdParameterBuilder toBuilder() =>
      ConsumerRestaurantsPopularGetZoneIdParameterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerRestaurantsPopularGetZoneIdParameter &&
        oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(
            r'ConsumerRestaurantsPopularGetZoneIdParameter')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ConsumerRestaurantsPopularGetZoneIdParameterBuilder
    implements
        Builder<ConsumerRestaurantsPopularGetZoneIdParameter,
            ConsumerRestaurantsPopularGetZoneIdParameterBuilder> {
  _$ConsumerRestaurantsPopularGetZoneIdParameter? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ConsumerRestaurantsPopularGetZoneIdParameterBuilder() {
    ConsumerRestaurantsPopularGetZoneIdParameter._defaults(this);
  }

  ConsumerRestaurantsPopularGetZoneIdParameterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerRestaurantsPopularGetZoneIdParameter other) {
    _$v = other as _$ConsumerRestaurantsPopularGetZoneIdParameter;
  }

  @override
  void update(
      void Function(ConsumerRestaurantsPopularGetZoneIdParameterBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerRestaurantsPopularGetZoneIdParameter build() => _build();

  _$ConsumerRestaurantsPopularGetZoneIdParameter _build() {
    final _$result = _$v ??
        _$ConsumerRestaurantsPopularGetZoneIdParameter._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ConsumerRestaurantsPopularGetZoneIdParameter', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
