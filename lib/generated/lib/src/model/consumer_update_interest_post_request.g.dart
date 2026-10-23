// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_update_interest_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerUpdateInterestPostRequest
    extends ConsumerUpdateInterestPostRequest {
  @override
  final BuiltList<int> interest;

  factory _$ConsumerUpdateInterestPostRequest(
          [void Function(ConsumerUpdateInterestPostRequestBuilder)? updates]) =>
      (ConsumerUpdateInterestPostRequestBuilder()..update(updates))._build();

  _$ConsumerUpdateInterestPostRequest._({required this.interest}) : super._();
  @override
  ConsumerUpdateInterestPostRequest rebuild(
          void Function(ConsumerUpdateInterestPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerUpdateInterestPostRequestBuilder toBuilder() =>
      ConsumerUpdateInterestPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerUpdateInterestPostRequest &&
        interest == other.interest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, interest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerUpdateInterestPostRequest')
          ..add('interest', interest))
        .toString();
  }
}

class ConsumerUpdateInterestPostRequestBuilder
    implements
        Builder<ConsumerUpdateInterestPostRequest,
            ConsumerUpdateInterestPostRequestBuilder> {
  _$ConsumerUpdateInterestPostRequest? _$v;

  ListBuilder<int>? _interest;
  ListBuilder<int> get interest => _$this._interest ??= ListBuilder<int>();
  set interest(ListBuilder<int>? interest) => _$this._interest = interest;

  ConsumerUpdateInterestPostRequestBuilder() {
    ConsumerUpdateInterestPostRequest._defaults(this);
  }

  ConsumerUpdateInterestPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _interest = $v.interest.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerUpdateInterestPostRequest other) {
    _$v = other as _$ConsumerUpdateInterestPostRequest;
  }

  @override
  void update(
      void Function(ConsumerUpdateInterestPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerUpdateInterestPostRequest build() => _build();

  _$ConsumerUpdateInterestPostRequest _build() {
    _$ConsumerUpdateInterestPostRequest _$result;
    try {
      _$result = _$v ??
          _$ConsumerUpdateInterestPostRequest._(
            interest: interest.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interest';
        interest.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConsumerUpdateInterestPostRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
