// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_consumer_search_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatConsumerSearchResponse extends ChatConsumerSearchResponse {
  @override
  final int? totalSize;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final BuiltList<ChatConversation>? conversations;

  factory _$ChatConsumerSearchResponse(
          [void Function(ChatConsumerSearchResponseBuilder)? updates]) =>
      (ChatConsumerSearchResponseBuilder()..update(updates))._build();

  _$ChatConsumerSearchResponse._(
      {this.totalSize, this.limit, this.offset, this.conversations})
      : super._();
  @override
  ChatConsumerSearchResponse rebuild(
          void Function(ChatConsumerSearchResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatConsumerSearchResponseBuilder toBuilder() =>
      ChatConsumerSearchResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatConsumerSearchResponse &&
        totalSize == other.totalSize &&
        limit == other.limit &&
        offset == other.offset &&
        conversations == other.conversations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalSize.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, conversations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatConsumerSearchResponse')
          ..add('totalSize', totalSize)
          ..add('limit', limit)
          ..add('offset', offset)
          ..add('conversations', conversations))
        .toString();
  }
}

class ChatConsumerSearchResponseBuilder
    implements
        Builder<ChatConsumerSearchResponse, ChatConsumerSearchResponseBuilder> {
  _$ChatConsumerSearchResponse? _$v;

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

  ChatConsumerSearchResponseBuilder() {
    ChatConsumerSearchResponse._defaults(this);
  }

  ChatConsumerSearchResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalSize = $v.totalSize;
      _limit = $v.limit;
      _offset = $v.offset;
      _conversations = $v.conversations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatConsumerSearchResponse other) {
    _$v = other as _$ChatConsumerSearchResponse;
  }

  @override
  void update(void Function(ChatConsumerSearchResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatConsumerSearchResponse build() => _build();

  _$ChatConsumerSearchResponse _build() {
    _$ChatConsumerSearchResponse _$result;
    try {
      _$result = _$v ??
          _$ChatConsumerSearchResponse._(
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
            r'ChatConsumerSearchResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
