// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_consumer_send_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChatConsumerSendRequestReceiverTypeEnum
    _$chatConsumerSendRequestReceiverTypeEnum_vendor =
    const ChatConsumerSendRequestReceiverTypeEnum._('vendor');
const ChatConsumerSendRequestReceiverTypeEnum
    _$chatConsumerSendRequestReceiverTypeEnum_deliveryMan =
    const ChatConsumerSendRequestReceiverTypeEnum._('deliveryMan');
const ChatConsumerSendRequestReceiverTypeEnum
    _$chatConsumerSendRequestReceiverTypeEnum_admin =
    const ChatConsumerSendRequestReceiverTypeEnum._('admin');

ChatConsumerSendRequestReceiverTypeEnum
    _$chatConsumerSendRequestReceiverTypeEnumValueOf(String name) {
  switch (name) {
    case 'vendor':
      return _$chatConsumerSendRequestReceiverTypeEnum_vendor;
    case 'deliveryMan':
      return _$chatConsumerSendRequestReceiverTypeEnum_deliveryMan;
    case 'admin':
      return _$chatConsumerSendRequestReceiverTypeEnum_admin;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChatConsumerSendRequestReceiverTypeEnum>
    _$chatConsumerSendRequestReceiverTypeEnumValues = BuiltSet<
        ChatConsumerSendRequestReceiverTypeEnum>(const <ChatConsumerSendRequestReceiverTypeEnum>[
  _$chatConsumerSendRequestReceiverTypeEnum_vendor,
  _$chatConsumerSendRequestReceiverTypeEnum_deliveryMan,
  _$chatConsumerSendRequestReceiverTypeEnum_admin,
]);

Serializer<ChatConsumerSendRequestReceiverTypeEnum>
    _$chatConsumerSendRequestReceiverTypeEnumSerializer =
    _$ChatConsumerSendRequestReceiverTypeEnumSerializer();

class _$ChatConsumerSendRequestReceiverTypeEnumSerializer
    implements PrimitiveSerializer<ChatConsumerSendRequestReceiverTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'vendor': 'vendor',
    'deliveryMan': 'delivery_man',
    'admin': 'admin',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'vendor': 'vendor',
    'delivery_man': 'deliveryMan',
    'admin': 'admin',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChatConsumerSendRequestReceiverTypeEnum
  ];
  @override
  final String wireName = 'ChatConsumerSendRequestReceiverTypeEnum';

  @override
  Object serialize(Serializers serializers,
          ChatConsumerSendRequestReceiverTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChatConsumerSendRequestReceiverTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChatConsumerSendRequestReceiverTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChatConsumerSendRequest extends ChatConsumerSendRequest {
  @override
  final int? conversationId;
  @override
  final ChatConsumerSendRequestReceiverTypeEnum? receiverType;
  @override
  final int? receiverId;
  @override
  final String? message;
  @override
  final String? file;
  @override
  final int? limit;
  @override
  final int? offset;

  factory _$ChatConsumerSendRequest(
          [void Function(ChatConsumerSendRequestBuilder)? updates]) =>
      (ChatConsumerSendRequestBuilder()..update(updates))._build();

  _$ChatConsumerSendRequest._(
      {this.conversationId,
      this.receiverType,
      this.receiverId,
      this.message,
      this.file,
      this.limit,
      this.offset})
      : super._();
  @override
  ChatConsumerSendRequest rebuild(
          void Function(ChatConsumerSendRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatConsumerSendRequestBuilder toBuilder() =>
      ChatConsumerSendRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatConsumerSendRequest &&
        conversationId == other.conversationId &&
        receiverType == other.receiverType &&
        receiverId == other.receiverId &&
        message == other.message &&
        file == other.file &&
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
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatConsumerSendRequest')
          ..add('conversationId', conversationId)
          ..add('receiverType', receiverType)
          ..add('receiverId', receiverId)
          ..add('message', message)
          ..add('file', file)
          ..add('limit', limit)
          ..add('offset', offset))
        .toString();
  }
}

class ChatConsumerSendRequestBuilder
    implements
        Builder<ChatConsumerSendRequest, ChatConsumerSendRequestBuilder> {
  _$ChatConsumerSendRequest? _$v;

  int? _conversationId;
  int? get conversationId => _$this._conversationId;
  set conversationId(int? conversationId) =>
      _$this._conversationId = conversationId;

  ChatConsumerSendRequestReceiverTypeEnum? _receiverType;
  ChatConsumerSendRequestReceiverTypeEnum? get receiverType =>
      _$this._receiverType;
  set receiverType(ChatConsumerSendRequestReceiverTypeEnum? receiverType) =>
      _$this._receiverType = receiverType;

  int? _receiverId;
  int? get receiverId => _$this._receiverId;
  set receiverId(int? receiverId) => _$this._receiverId = receiverId;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  ChatConsumerSendRequestBuilder() {
    ChatConsumerSendRequest._defaults(this);
  }

  ChatConsumerSendRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conversationId = $v.conversationId;
      _receiverType = $v.receiverType;
      _receiverId = $v.receiverId;
      _message = $v.message;
      _file = $v.file;
      _limit = $v.limit;
      _offset = $v.offset;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatConsumerSendRequest other) {
    _$v = other as _$ChatConsumerSendRequest;
  }

  @override
  void update(void Function(ChatConsumerSendRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatConsumerSendRequest build() => _build();

  _$ChatConsumerSendRequest _build() {
    final _$result = _$v ??
        _$ChatConsumerSendRequest._(
          conversationId: conversationId,
          receiverType: receiverType,
          receiverId: receiverId,
          message: message,
          file: file,
          limit: limit,
          offset: offset,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
