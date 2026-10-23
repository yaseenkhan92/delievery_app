// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_consumer_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatConsumerListResponse extends ChatConsumerListResponse {
  @override
  final String? type;
  @override
  final int? totalSize;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final BuiltList<ChatConversation>? conversations;

  factory _$ChatConsumerListResponse(
          [void Function(ChatConsumerListResponseBuilder)? updates]) =>
      (ChatConsumerListResponseBuilder()..update(updates))._build();

  _$ChatConsumerListResponse._(
      {this.type, this.totalSize, this.limit, this.offset, this.conversations})
      : super._();
  @override
  ChatConsumerListResponse rebuild(
          void Function(ChatConsumerListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatConsumerListResponseBuilder toBuilder() =>
      ChatConsumerListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatConsumerListResponse &&
        type == other.type &&
        totalSize == other.totalSize &&
        limit == other.limit &&
        offset == other.offset &&
        conversations == other.conversations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, totalSize.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, conversations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatConsumerListResponse')
          ..add('type', type)
          ..add('totalSize', totalSize)
          ..add('limit', limit)
          ..add('offset', offset)
          ..add('conversations', conversations))
        .toString();
  }
}

class ChatConsumerListResponseBuilder
    implements
        Builder<ChatConsumerListResponse, ChatConsumerListResponseBuilder> {
  _$ChatConsumerListResponse? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _totalSize;
  int? get totalSize => _$this._totalSize;
  set totalSize(int? totalSize) => _$this._totalSize = totalSize;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  ListBuilder<ChatConversation>? _conversations;
  ListBuilder<ChatConversation> get conversations =>
      _$this._conversations ??= ListBuilder<ChatConversation>();
  set conversations(ListBuilder<ChatConversation>? conversations) =>
      _$this._conversations = conversations;

  ChatConsumerListResponseBuilder() {
    ChatConsumerListResponse._defaults(this);
  }

  ChatConsumerListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _totalSize = $v.totalSize;
      _limit = $v.limit;
      _offset = $v.offset;
      _conversations = $v.conversations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatConsumerListResponse other) {
    _$v = other as _$ChatConsumerListResponse;
  }

  @override
  void update(void Function(ChatConsumerListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatConsumerListResponse build() => _build();

  _$ChatConsumerListResponse _build() {
    _$ChatConsumerListResponse _$result;
    try {
      _$result = _$v ??
          _$ChatConsumerListResponse._(
            type: type,
            totalSize: totalSize,
            limit: limit,
            offset: offset,
            conversations: _conversations?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conversations';
        _conversations?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChatConsumerListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
