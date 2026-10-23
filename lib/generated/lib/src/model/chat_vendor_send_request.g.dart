// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_vendor_send_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChatVendorSendRequestReceiverTypeEnum
    _$chatVendorSendRequestReceiverTypeEnum_customer =
    const ChatVendorSendRequestReceiverTypeEnum._('customer');
const ChatVendorSendRequestReceiverTypeEnum
    _$chatVendorSendRequestReceiverTypeEnum_deliveryMan =
    const ChatVendorSendRequestReceiverTypeEnum._('deliveryMan');
const ChatVendorSendRequestReceiverTypeEnum
    _$chatVendorSendRequestReceiverTypeEnum_admin =
    const ChatVendorSendRequestReceiverTypeEnum._('admin');

ChatVendorSendRequestReceiverTypeEnum
    _$chatVendorSendRequestReceiverTypeEnumValueOf(String name) {
  switch (name) {
    case 'customer':
      return _$chatVendorSendRequestReceiverTypeEnum_customer;
    case 'deliveryMan':
      return _$chatVendorSendRequestReceiverTypeEnum_deliveryMan;
    case 'admin':
      return _$chatVendorSendRequestReceiverTypeEnum_admin;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChatVendorSendRequestReceiverTypeEnum>
    _$chatVendorSendRequestReceiverTypeEnumValues = BuiltSet<
        ChatVendorSendRequestReceiverTypeEnum>(const <ChatVendorSendRequestReceiverTypeEnum>[
  _$chatVendorSendRequestReceiverTypeEnum_customer,
  _$chatVendorSendRequestReceiverTypeEnum_deliveryMan,
  _$chatVendorSendRequestReceiverTypeEnum_admin,
]);

Serializer<ChatVendorSendRequestReceiverTypeEnum>
    _$chatVendorSendRequestReceiverTypeEnumSerializer =
    _$ChatVendorSendRequestReceiverTypeEnumSerializer();

class _$ChatVendorSendRequestReceiverTypeEnumSerializer
    implements PrimitiveSerializer<ChatVendorSendRequestReceiverTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'customer': 'customer',
    'deliveryMan': 'delivery_man',
    'admin': 'admin',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'customer': 'customer',
    'delivery_man': 'deliveryMan',
    'admin': 'admin',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChatVendorSendRequestReceiverTypeEnum
  ];
  @override
  final String wireName = 'ChatVendorSendRequestReceiverTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ChatVendorSendRequestReceiverTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChatVendorSendRequestReceiverTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChatVendorSendRequestReceiverTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChatVendorSendRequest extends ChatVendorSendRequest {
  @override
  final int? conversationId;
  @override
  final ChatVendorSendRequestReceiverTypeEnum? receiverType;
  @override
  final int? receiverId;
  @override
  final String? message;
  @override
  final int? limit;
  @override
  final int? offset;

  factory _$ChatVendorSendRequest(
          [void Function(ChatVendorSendRequestBuilder)? updates]) =>
      (ChatVendorSendRequestBuilder()..update(updates))._build();

  _$ChatVendorSendRequest._(
      {this.conversationId,
      this.receiverType,
      this.receiverId,
      this.message,
      this.limit,
      this.offset})
      : super._();
  @override
  ChatVendorSendRequest rebuild(
          void Function(ChatVendorSendRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatVendorSendRequestBuilder toBuilder() =>
      ChatVendorSendRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatVendorSendRequest &&
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
    return (newBuiltValueToStringHelper(r'ChatVendorSendRequest')
          ..add('conversationId', conversationId)
          ..add('receiverType', receiverType)
          ..add('receiverId', receiverId)
          ..add('message', message)
          ..add('limit', limit)
          ..add('offset', offset))
        .toString();
  }
}

class ChatVendorSendRequestBuilder
    implements Builder<ChatVendorSendRequest, ChatVendorSendRequestBuilder> {
  _$ChatVendorSendRequest? _$v;

  int? _conversationId;
  int? get conversationId => _$this._conversationId;
  set conversationId(int? conversationId) =>
      _$this._conversationId = conversationId;

  ChatVendorSendRequestReceiverTypeEnum? _receiverType;
  ChatVendorSendRequestReceiverTypeEnum? get receiverType =>
      _$this._receiverType;
  set receiverType(ChatVendorSendRequestReceiverTypeEnum? receiverType) =>
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

  ChatVendorSendRequestBuilder() {
    ChatVendorSendRequest._defaults(this);
  }

  ChatVendorSendRequestBuilder get _$this {
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
  void replace(ChatVendorSendRequest other) {
    _$v = other as _$ChatVendorSendRequest;
  }

  @override
  void update(void Function(ChatVendorSendRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatVendorSendRequest build() => _build();

  _$ChatVendorSendRequest _build() {
    final _$result = _$v ??
        _$ChatVendorSendRequest._(
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
