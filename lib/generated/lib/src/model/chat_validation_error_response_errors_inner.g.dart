// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_validation_error_response_errors_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatValidationErrorResponseErrorsInner
    extends ChatValidationErrorResponseErrorsInner {
  @override
  final String? code;
  @override
  final String? message;

  factory _$ChatValidationErrorResponseErrorsInner(
          [void Function(ChatValidationErrorResponseErrorsInnerBuilder)?
              updates]) =>
      (ChatValidationErrorResponseErrorsInnerBuilder()..update(updates))
          ._build();

  _$ChatValidationErrorResponseErrorsInner._({this.code, this.message})
      : super._();
  @override
  ChatValidationErrorResponseErrorsInner rebuild(
          void Function(ChatValidationErrorResponseErrorsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatValidationErrorResponseErrorsInnerBuilder toBuilder() =>
      ChatValidationErrorResponseErrorsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatValidationErrorResponseErrorsInner &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ChatValidationErrorResponseErrorsInner')
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class ChatValidationErrorResponseErrorsInnerBuilder
    implements
        Builder<ChatValidationErrorResponseErrorsInner,
            ChatValidationErrorResponseErrorsInnerBuilder> {
  _$ChatValidationErrorResponseErrorsInner? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ChatValidationErrorResponseErrorsInnerBuilder() {
    ChatValidationErrorResponseErrorsInner._defaults(this);
  }

  ChatValidationErrorResponseErrorsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatValidationErrorResponseErrorsInner other) {
    _$v = other as _$ChatValidationErrorResponseErrorsInner;
  }

  @override
  void update(
      void Function(ChatValidationErrorResponseErrorsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatValidationErrorResponseErrorsInner build() => _build();

  _$ChatValidationErrorResponseErrorsInner _build() {
    final _$result = _$v ??
        _$ChatValidationErrorResponseErrorsInner._(
          code: code,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
