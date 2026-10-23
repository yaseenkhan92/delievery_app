// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_send_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatSendResponse extends ChatSendResponse {
  @override
  final int? totalSize;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final bool? status;
  @override
  final String? message;
  @override
  final BuiltList<ChatMessage>? messages;
  @override
  final ChatConversation? conversation;

  factory _$ChatSendResponse(
          [void Function(ChatSendResponseBuilder)? updates]) =>
      (ChatSendResponseBuilder()..update(updates))._build();

  _$ChatSendResponse._(
      {this.totalSize,
      this.limit,
      this.offset,
      this.status,
      this.message,
      this.messages,
      this.conversation})
      : super._();
  @override
  ChatSendResponse rebuild(void Function(ChatSendResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatSendResponseBuilder toBuilder() =>
      ChatSendResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatSendResponse &&
        totalSize == other.totalSize &&
        limit == other.limit &&
        offset == other.offset &&
        status == other.status &&
        message == other.message &&
        messages == other.messages &&
        conversation == other.conversation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalSize.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, messages.hashCode);
    _$hash = $jc(_$hash, conversation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatSendResponse')
          ..add('totalSize', totalSize)
          ..add('limit', limit)
          ..add('offset', offset)
          ..add('status', status)
          ..add('message', message)
          ..add('messages', messages)
          ..add('conversation', conversation))
        .toString();
  }
}

class ChatSendResponseBuilder
    implements Builder<ChatSendResponse, ChatSendResponseBuilder> {
  _$ChatSendResponse? _$v;

  int? _totalSize;
  int? get totalSize => _$this._totalSize;
  set totalSize(int? totalSize) => _$this._totalSize = totalSize;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<ChatMessage>? _messages;
  ListBuilder<ChatMessage> get messages =>
      _$this._messages ??= ListBuilder<ChatMessage>();
  set messages(ListBuilder<ChatMessage>? messages) =>
      _$this._messages = messages;

  ChatConversationBuilder? _conversation;
  ChatConversationBuilder get conversation =>
      _$this._conversation ??= ChatConversationBuilder();
  set conversation(ChatConversationBuilder? conversation) =>
      _$this._conversation = conversation;

  ChatSendResponseBuilder() {
    ChatSendResponse._defaults(this);
  }

  ChatSendResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalSize = $v.totalSize;
      _limit = $v.limit;
      _offset = $v.offset;
      _status = $v.status;
      _message = $v.message;
      _messages = $v.messages?.toBuilder();
      _conversation = $v.conversation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatSendResponse other) {
    _$v = other as _$ChatSendResponse;
  }

  @override
  void update(void Function(ChatSendResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatSendResponse build() => _build();

  _$ChatSendResponse _build() {
    _$ChatSendResponse _$result;
    try {
      _$result = _$v ??
          _$ChatSendResponse._(
            totalSize: totalSize,
            limit: limit,
            offset: offset,
            status: status,
            message: message,
            messages: _messages?.build(),
            conversation: _conversation?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messages';
        _messages?.build();
        _$failedField = 'conversation';
        _conversation?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChatSendResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
