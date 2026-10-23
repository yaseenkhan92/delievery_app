// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_thread_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatThreadResponse extends ChatThreadResponse {
  @override
  final int? totalSize;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final bool? status;
  @override
  final BuiltList<ChatMessage>? messages;
  @override
  final ChatConversation? conversation;

  factory _$ChatThreadResponse(
          [void Function(ChatThreadResponseBuilder)? updates]) =>
      (ChatThreadResponseBuilder()..update(updates))._build();

  _$ChatThreadResponse._(
      {this.totalSize,
      this.limit,
      this.offset,
      this.status,
      this.messages,
      this.conversation})
      : super._();
  @override
  ChatThreadResponse rebuild(
          void Function(ChatThreadResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatThreadResponseBuilder toBuilder() =>
      ChatThreadResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatThreadResponse &&
        totalSize == other.totalSize &&
        limit == other.limit &&
        offset == other.offset &&
        status == other.status &&
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
    _$hash = $jc(_$hash, messages.hashCode);
    _$hash = $jc(_$hash, conversation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatThreadResponse')
          ..add('totalSize', totalSize)
          ..add('limit', limit)
          ..add('offset', offset)
          ..add('status', status)
          ..add('messages', messages)
          ..add('conversation', conversation))
        .toString();
  }
}

class ChatThreadResponseBuilder
    implements Builder<ChatThreadResponse, ChatThreadResponseBuilder> {
  _$ChatThreadResponse? _$v;

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

  ChatThreadResponseBuilder() {
    ChatThreadResponse._defaults(this);
  }

  ChatThreadResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalSize = $v.totalSize;
      _limit = $v.limit;
      _offset = $v.offset;
      _status = $v.status;
      _messages = $v.messages?.toBuilder();
      _conversation = $v.conversation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatThreadResponse other) {
    _$v = other as _$ChatThreadResponse;
  }

  @override
  void update(void Function(ChatThreadResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatThreadResponse build() => _build();

  _$ChatThreadResponse _build() {
    _$ChatThreadResponse _$result;
    try {
      _$result = _$v ??
          _$ChatThreadResponse._(
            totalSize: totalSize,
            limit: limit,
            offset: offset,
            status: status,
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
            r'ChatThreadResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
