//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consumer_cart_add_post_request.g.dart';

/// ConsumerCartAddPostRequest
///
/// Properties:
/// * [isGuest] 
/// * [guestId] 
/// * [itemId] 
/// * [variations] 
/// * [itemType] 
/// * [price] 
/// * [quantity] 
/// * [addOnIds] 
/// * [addOnQtys] 
/// * [variationOptions] 
@BuiltValue()
abstract class ConsumerCartAddPostRequest implements Built<ConsumerCartAddPostRequest, ConsumerCartAddPostRequestBuilder> {
  @BuiltValueField(wireName: r'is_guest')
  JsonObject? get isGuest;

  @BuiltValueField(wireName: r'guest_id')
  JsonObject? get guestId;

  @BuiltValueField(wireName: r'item_id')
  JsonObject? get itemId;

  @BuiltValueField(wireName: r'variations')
  JsonObject? get variations;

  @BuiltValueField(wireName: r'item_type')
  JsonObject? get itemType;

  @BuiltValueField(wireName: r'price')
  JsonObject? get price;

  @BuiltValueField(wireName: r'quantity')
  JsonObject? get quantity;

  @BuiltValueField(wireName: r'add_on_ids')
  JsonObject? get addOnIds;

  @BuiltValueField(wireName: r'add_on_qtys')
  JsonObject? get addOnQtys;

  @BuiltValueField(wireName: r'variation_options')
  JsonObject? get variationOptions;

  ConsumerCartAddPostRequest._();

  factory ConsumerCartAddPostRequest([void updates(ConsumerCartAddPostRequestBuilder b)]) = _$ConsumerCartAddPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsumerCartAddPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsumerCartAddPostRequest> get serializer => _$ConsumerCartAddPostRequestSerializer();
}

class _$ConsumerCartAddPostRequestSerializer implements PrimitiveSerializer<ConsumerCartAddPostRequest> {
  @override
  final Iterable<Type> types = const [ConsumerCartAddPostRequest, _$ConsumerCartAddPostRequest];

  @override
  final String wireName = r'ConsumerCartAddPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsumerCartAddPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.isGuest != null) {
      yield r'is_guest';
      yield serializers.serialize(
        object.isGuest,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.guestId != null) {
      yield r'guest_id';
      yield serializers.serialize(
        object.guestId,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.itemId != null) {
      yield r'item_id';
      yield serializers.serialize(
        object.itemId,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.variations != null) {
      yield r'variations';
      yield serializers.serialize(
        object.variations,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.itemType != null) {
      yield r'item_type';
      yield serializers.serialize(
        object.itemType,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.quantity != null) {
      yield r'quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.addOnIds != null) {
      yield r'add_on_ids';
      yield serializers.serialize(
        object.addOnIds,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.addOnQtys != null) {
      yield r'add_on_qtys';
      yield serializers.serialize(
        object.addOnQtys,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.variationOptions != null) {
      yield r'variation_options';
      yield serializers.serialize(
        object.variationOptions,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsumerCartAddPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsumerCartAddPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'is_guest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.isGuest = valueDes;
          break;
        case r'guest_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.guestId = valueDes;
          break;
        case r'item_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.itemId = valueDes;
          break;
        case r'variations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.variations = valueDes;
          break;
        case r'item_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.itemType = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.price = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.quantity = valueDes;
          break;
        case r'add_on_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.addOnIds = valueDes;
          break;
        case r'add_on_qtys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.addOnQtys = valueDes;
          break;
        case r'variation_options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.variationOptions = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsumerCartAddPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumerCartAddPostRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}


