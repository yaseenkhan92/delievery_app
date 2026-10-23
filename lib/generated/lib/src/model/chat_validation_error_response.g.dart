// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_validation_error_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatValidationErrorResponse extends ChatValidationErrorResponse {
  @override
  final BuiltList<ChatValidationErrorResponseErrorsInner> errors;

  factory _$ChatValidationErrorResponse(
          [void Function(ChatValidationErrorResponseBuilder)? updates]) =>
      (ChatValidationErrorResponseBuilder()..update(updates))._build();

  _$ChatValidationErrorResponse._({required this.errors}) : super._();
  @override
  ChatValidationErrorResponse rebuild(
          void Function(ChatValidationErrorResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatValidationErrorResponseBuilder toBuilder() =>
      ChatValidationErrorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatValidationErrorResponse && errors == other.errors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatValidationErrorResponse')
          ..add('errors', errors))
        .toString();
  }
}

class ChatValidationErrorResponseBuilder
    implements
        Builder<ChatValidationErrorResponse,
            ChatValidationErrorResponseBuilder> {
  _$ChatValidationErrorResponse? _$v;

  ListBuilder<ChatValidationErrorResponseErrorsInner>? _errors;
  ListBuilder<ChatValidationErrorResponseErrorsInner> get errors =>
      _$this._errors ??= ListBuilder<ChatValidationErrorResponseErrorsInner>();
  set errors(ListBuilder<ChatValidationErrorResponseErrorsInner>? errors) =>
      _$this._errors = errors;

  ChatValidationErrorResponseBuilder() {
    ChatValidationErrorResponse._defaults(this);
  }

  ChatValidationErrorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errors = $v.errors.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatValidationErrorResponse other) {
    _$v = other as _$ChatValidationErrorResponse;
  }

  @override
  void update(void Function(ChatValidationErrorResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatValidationErrorResponse build() => _build();

  _$ChatValidationErrorResponse _build() {
    _$ChatValidationErrorResponse _$result;
    try {
      _$result = _$v ??
          _$ChatValidationErrorResponse._(
            errors: errors.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        errors.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChatValidationErrorResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
