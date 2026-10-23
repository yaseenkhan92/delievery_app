// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_vendor_driver_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatVendorDriverListResponse extends ChatVendorDriverListResponse {
  @override
  final String? type;
  @override
  final int? totalSize;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final BuiltList<ChatConversation>? conversation;

  factory _$ChatVendorDriverListResponse(
          [void Function(ChatVendorDriverListResponseBuilder)? updates]) =>
      (ChatVendorDriverListResponseBuilder()..update(updates))._build();

  _$ChatVendorDriverListResponse._(
      {this.type, this.totalSize, this.limit, this.offset, this.conversation})
      : super._();
  @override
  ChatVendorDriverListResponse rebuild(
          void Function(ChatVendorDriverListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatVendorDriverListResponseBuilder toBuilder() =>
      ChatVendorDriverListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatVendorDriverListResponse &&
        type == other.type &&
        totalSize == other.totalSize &&
        limit == other.limit &&
        offset == other.offset &&
        conversation == other.conversation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, totalSize.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, conversation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatVendorDriverListResponse')
          ..add('type', type)
          ..add('totalSize', totalSize)
          ..add('limit', limit)
          ..add('offset', offset)
          ..add('conversation', conversation))
        .toString();
  }
}

class ChatVendorDriverListResponseBuilder
    implements
        Builder<ChatVendorDriverListResponse,
            ChatVendorDriverListResponseBuilder> {
  _$ChatVendorDriverListResponse? _$v;

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

  ListBuilder<ChatConversation>? _conversation;
  ListBuilder<ChatConversation> get conversation =>
      _$this._conversation ??= ListBuilder<ChatConversation>();
  set conversation(ListBuilder<ChatConversation>? conversation) =>
      _$this._conversation = conversation;

  ChatVendorDriverListResponseBuilder() {
    ChatVendorDriverListResponse._defaults(this);
  }

  ChatVendorDriverListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _totalSize = $v.totalSize;
      _limit = $v.limit;
      _offset = $v.offset;
      _conversation = $v.conversation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatVendorDriverListResponse other) {
    _$v = other as _$ChatVendorDriverListResponse;
  }

  @override
  void update(void Function(ChatVendorDriverListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatVendorDriverListResponse build() => _build();

  _$ChatVendorDriverListResponse _build() {
    _$ChatVendorDriverListResponse _$result;
    try {
      _$result = _$v ??
          _$ChatVendorDriverListResponse._(
            type: type,
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
            r'ChatVendorDriverListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
