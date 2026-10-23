// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_vendor_driver_search_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatVendorDriverSearchResponse extends ChatVendorDriverSearchResponse {
  @override
  final int? totalSize;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final BuiltList<ChatConversation>? conversation;

  factory _$ChatVendorDriverSearchResponse(
          [void Function(ChatVendorDriverSearchResponseBuilder)? updates]) =>
      (ChatVendorDriverSearchResponseBuilder()..update(updates))._build();

  _$ChatVendorDriverSearchResponse._(
      {this.totalSize, this.limit, this.offset, this.conversation})
      : super._();
  @override
  ChatVendorDriverSearchResponse rebuild(
          void Function(ChatVendorDriverSearchResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatVendorDriverSearchResponseBuilder toBuilder() =>
      ChatVendorDriverSearchResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatVendorDriverSearchResponse &&
        totalSize == other.totalSize &&
        limit == other.limit &&
        offset == other.offset &&
        conversation == other.conversation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalSize.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, conversation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatVendorDriverSearchResponse')
          ..add('totalSize', totalSize)
          ..add('limit', limit)
          ..add('offset', offset)
          ..add('conversation', conversation))
        .toString();
  }
}

class ChatVendorDriverSearchResponseBuilder
    implements
        Builder<ChatVendorDriverSearchResponse,
            ChatVendorDriverSearchResponseBuilder> {
  _$ChatVendorDriverSearchResponse? _$v;

  int? _totalSize;
  int? get totalSize => _$this._totalSize;
  set totalSize(int? totalSize) => _$this._totalSize = totalSize;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  ListBuilder<ChatConversation>? _conversation;
  ListBuilder<ChatConversation> get conversation =>
      _$this._conversation ??= ListBuilder<ChatConversation>();
  set conversation(ListBuilder<ChatConversation>? conversation) =>
      _$this._conversation = conversation;

  ChatVendorDriverSearchResponseBuilder() {
    ChatVendorDriverSearchResponse._defaults(this);
  }

  ChatVendorDriverSearchResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalSize = $v.totalSize;
      _limit = $v.limit;
      _offset = $v.offset;
      _conversation = $v.conversation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatVendorDriverSearchResponse other) {
    _$v = other as _$ChatVendorDriverSearchResponse;
  }

  @override
  void update(void Function(ChatVendorDriverSearchResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatVendorDriverSearchResponse build() => _build();

  _$ChatVendorDriverSearchResponse _build() {
    _$ChatVendorDriverSearchResponse _$result;
    try {
      _$result = _$v ??
          _$ChatVendorDriverSearchResponse._(
            totalSize: totalSize,
            limit: limit,
            offset: offset,
            conversation: _conversation?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conversation';
        _conversation?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChatVendorDriverSearchResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
