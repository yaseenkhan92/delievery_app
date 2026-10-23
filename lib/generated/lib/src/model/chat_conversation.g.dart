// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_conversation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatConversation extends ChatConversation {
  @override
  final int? id;
  @override
  final int? senderId;
  @override
  final int? receiverId;
  @override
  final String? senderType;
  @override
  final String? receiverType;
  @override
  final int? lastMessageId;
  @override
  final DateTime? lastMessageTime;
  @override
  final int? unreadMessageCount;
  @override
  final ChatUserInfo? sender;
  @override
  final ChatUserInfo? receiver;
  @override
  final ChatMessage? lastMessage;

  factory _$ChatConversation(
          [void Function(ChatConversationBuilder)? updates]) =>
      (ChatConversationBuilder()..update(updates))._build();

  _$ChatConversation._(
      {this.id,
      this.senderId,
      this.receiverId,
      this.senderType,
      this.receiverType,
      this.lastMessageId,
      this.lastMessageTime,
      this.unreadMessageCount,
      this.sender,
      this.receiver,
      this.lastMessage})
      : super._();
  @override
  ChatConversation rebuild(void Function(ChatConversationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatConversationBuilder toBuilder() =>
      ChatConversationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatConversation &&
        id == other.id &&
        senderId == other.senderId &&
        receiverId == other.receiverId &&
        senderType == other.senderType &&
        receiverType == other.receiverType &&
        lastMessageId == other.lastMessageId &&
        lastMessageTime == other.lastMessageTime &&
        unreadMessageCount == other.unreadMessageCount &&
        sender == other.sender &&
        receiver == other.receiver &&
        lastMessage == other.lastMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, senderId.hashCode);
    _$hash = $jc(_$hash, receiverId.hashCode);
    _$hash = $jc(_$hash, senderType.hashCode);
    _$hash = $jc(_$hash, receiverType.hashCode);
    _$hash = $jc(_$hash, lastMessageId.hashCode);
    _$hash = $jc(_$hash, lastMessageTime.hashCode);
    _$hash = $jc(_$hash, unreadMessageCount.hashCode);
    _$hash = $jc(_$hash, sender.hashCode);
    _$hash = $jc(_$hash, receiver.hashCode);
    _$hash = $jc(_$hash, lastMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatConversation')
          ..add('id', id)
          ..add('senderId', senderId)
          ..add('receiverId', receiverId)
          ..add('senderType', senderType)
          ..add('receiverType', receiverType)
          ..add('lastMessageId', lastMessageId)
          ..add('lastMessageTime', lastMessageTime)
          ..add('unreadMessageCount', unreadMessageCount)
          ..add('sender', sender)
          ..add('receiver', receiver)
          ..add('lastMessage', lastMessage))
        .toString();
  }
}

class ChatConversationBuilder
    implements Builder<ChatConversation, ChatConversationBuilder> {
  _$ChatConversation? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _senderId;
  int? get senderId => _$this._senderId;
  set senderId(int? senderId) => _$this._senderId = senderId;

  int? _receiverId;
  int? get receiverId => _$this._receiverId;
  set receiverId(int? receiverId) => _$this._receiverId = receiverId;

  String? _senderType;
  String? get senderType => _$this._senderType;
  set senderType(String? senderType) => _$this._senderType = senderType;

  String? _receiverType;
  String? get receiverType => _$this._receiverType;
  set receiverType(String? receiverType) => _$this._receiverType = receiverType;

  int? _lastMessageId;
  int? get lastMessageId => _$this._lastMessageId;
  set lastMessageId(int? lastMessageId) =>
      _$this._lastMessageId = lastMessageId;

  DateTime? _lastMessageTime;
  DateTime? get lastMessageTime => _$this._lastMessageTime;
  set lastMessageTime(DateTime? lastMessageTime) =>
      _$this._lastMessageTime = lastMessageTime;

  int? _unreadMessageCount;
  int? get unreadMessageCount => _$this._unreadMessageCount;
  set unreadMessageCount(int? unreadMessageCount) =>
      _$this._unreadMessageCount = unreadMessageCount;

  ChatUserInfoBuilder? _sender;
  ChatUserInfoBuilder get sender => _$this._sender ??= ChatUserInfoBuilder();
  set sender(ChatUserInfoBuilder? sender) => _$this._sender = sender;

  ChatUserInfoBuilder? _receiver;
  ChatUserInfoBuilder get receiver =>
      _$this._receiver ??= ChatUserInfoBuilder();
  set receiver(ChatUserInfoBuilder? receiver) => _$this._receiver = receiver;

  ChatMessageBuilder? _lastMessage;
  ChatMessageBuilder get lastMessage =>
      _$this._lastMessage ??= ChatMessageBuilder();
  set lastMessage(ChatMessageBuilder? lastMessage) =>
      _$this._lastMessage = lastMessage;

  ChatConversationBuilder() {
    ChatConversation._defaults(this);
  }

  ChatConversationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _senderId = $v.senderId;
      _receiverId = $v.receiverId;
      _senderType = $v.senderType;
      _receiverType = $v.receiverType;
      _lastMessageId = $v.lastMessageId;
      _lastMessageTime = $v.lastMessageTime;
      _unreadMessageCount = $v.unreadMessageCount;
      _sender = $v.sender?.toBuilder();
      _receiver = $v.receiver?.toBuilder();
      _lastMessage = $v.lastMessage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatConversation other) {
    _$v = other as _$ChatConversation;
  }

  @override
  void update(void Function(ChatConversationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatConversation build() => _build();

  _$ChatConversation _build() {
    _$ChatConversation _$result;
    try {
      _$result = _$v ??
          _$ChatConversation._(
            id: id,
            senderId: senderId,
            receiverId: receiverId,
            senderType: senderType,
            receiverType: receiverType,
            lastMessageId: lastMessageId,
            lastMessageTime: lastMessageTime,
            unreadMessageCount: unreadMessageCount,
            sender: _sender?.build(),
            receiver: _receiver?.build(),
            lastMessage: _lastMessage?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sender';
        _sender?.build();
        _$failedField = 'receiver';
        _receiver?.build();
        _$failedField = 'lastMessage';
        _lastMessage?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChatConversation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
