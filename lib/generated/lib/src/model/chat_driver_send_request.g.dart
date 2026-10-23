// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_driver_send_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChatDriverSendRequestReceiverTypeEnum
    _$chatDriverSendRequestReceiverTypeEnum_customer =
    const ChatDriverSendRequestReceiverTypeEnum._('customer');
const ChatDriverSendRequestReceiverTypeEnum
    _$chatDriverSendRequestReceiverTypeEnum_vendor =
    const ChatDriverSendRequestReceiverTypeEnum._('vendor');

ChatDriverSendRequestReceiverTypeEnum
    _$chatDriverSendRequestReceiverTypeEnumValueOf(String name) {
  switch (name) {
    case 'customer':
      return _$chatDriverSendRequestReceiverTypeEnum_customer;
    case 'vendor':
      return _$chatDriverSendRequestReceiverTypeEnum_vendor;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChatDriverSendRequestReceiverTypeEnum>
    _$chatDriverSendRequestReceiverTypeEnumValues = BuiltSet<
        ChatDriverSendRequestReceiverTypeEnum>(const <ChatDriverSendRequestReceiverTypeEnum>[
  _$chatDriverSendRequestReceiverTypeEnum_customer,
  _$chatDriverSendRequestReceiverTypeEnum_vendor,
]);

Serializer<ChatDriverSendRequestReceiverTypeEnum>
    _$chatDriverSendRequestReceiverTypeEnumSerializer =
    _$ChatDriverSendRequestReceiverTypeEnumSerializer();

class _$ChatDriverSendRequestReceiverTypeEnumSerializer
    implements PrimitiveSerializer<ChatDriverSendRequestReceiverTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'customer': 'customer',
    'vendor': 'vendor',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'customer': 'customer',
    'vendor': 'vendor',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChatDriverSendRequestReceiverTypeEnum
  ];
  @override
  final String wireName = 'ChatDriverSendRequestReceiverTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ChatDriverSendRequestReceiverTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChatDriverSendRequestReceiverTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChatDriverSendRequestReceiverTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChatDriverSendRequest extends ChatDriverSendRequest {
  @override
  final int? conversationId;
  @override
  final ChatDriverSendRequestReceiverTypeEnum? receiverType;
  @override
  final int? receiverId;
  @override
  final String? message;
  @override
  final int? limit;
  @override
  final int? offset;

  factory _$ChatDriverSendRequest(
          [void Function(ChatDriverSendRequestBuilder)? updates]) =>
      (ChatDriverSendRequestBuilder()..update(updates))._build();

  _$ChatDriverSendRequest._(
      {this.conversationId,
      this.receiverType,
      this.receiverId,
      this.message,
      this.limit,
      this.offset})
      : super._();
  @override
  ChatDriverSendRequest rebuild(
          void Function(ChatDriverSendRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatDriverSendRequestBuilder toBuilder() =>
      ChatDriverSendRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatDriverSendRequest &&
        conversationId == other.conversationId &&
        receiverType == other.receiverType &&
        receiverId == other.receiverId &&
        message == other.message &&
        limit == other.limit &&
        offset == other.offset;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conversationId.hashCode);
    _$hash = $jc(_$hash, receiverType.hashCode);
    _$hash = $jc(_$hash, receiverId.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatDriverSendRequest')
          ..add('conversationId', conversationId)
          ..add('receiverType', receiverType)
          ..add('receiverId', receiverId)
          ..add('message', message)
          ..add('limit', limit)
          ..add('offset', offset))
        .toString();
  }
}

class ChatDriverSendRequestBuilder
    implements Builder<ChatDriverSendRequest, ChatDriverSendRequestBuilder> {
  _$ChatDriverSendRequest? _$v;

  int? _conversationId;
  int? get conversationId => _$this._conversationId;
  set conversationId(int? conversationId) =>
      _$this._conversationId = conversationId;

  ChatDriverSendRequestReceiverTypeEnum? _receiverType;
  ChatDriverSendRequestReceiverTypeEnum? get receiverType =>
      _$this._receiverType;
  set receiverType(ChatDriverSendRequestReceiverTypeEnum? receiverType) =>
      _$this._receiverType = receiverType;

  int? _receiverId;
  int? get receiverId => _$this._receiverId;
  set receiverId(int? receiverId) => _$this._receiverId = receiverId;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  ChatDriverSendRequestBuilder() {
    ChatDriverSendRequest._defaults(this);
  }

  ChatDriverSendRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conversationId = $v.conversationId;
      _receiverType = $v.receiverType;
      _receiverId = $v.receiverId;
      _message = $v.message;
      _limit = $v.limit;
      _offset = $v.offset;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatDriverSendRequest other) {
    _$v = other as _$ChatDriverSendRequest;
  }

  @override
  void update(void Function(ChatDriverSendRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatDriverSendRequest build() => _build();

  _$ChatDriverSendRequest _build() {
    final _$result = _$v ??
        _$ChatDriverSendRequest._(
          conversationId: conversationId,
          receiverType: receiverType,
          receiverId: receiverId,
          message: message,
          limit: limit,
          offset: offset,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
