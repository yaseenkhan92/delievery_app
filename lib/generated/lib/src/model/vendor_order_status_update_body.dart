//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vendor_order_status_update_body.g.dart';

/// VendorOrderStatusUpdateBody
///
/// Properties:
/// * [status] 
/// * [cancellationReason] 
@BuiltValue()
abstract class VendorOrderStatusUpdateBody implements Built<VendorOrderStatusUpdateBody, VendorOrderStatusUpdateBodyBuilder> {
  @BuiltValueField(wireName: r'status')
  VendorOrderStatusUpdateBodyStatusEnum get status;
  // enum statusEnum {  confirmed,  processing,  handover,  delivered,  canceled,  };

  @BuiltValueField(wireName: r'cancellation_reason')
  String? get cancellationReason;

  VendorOrderStatusUpdateBody._();

  factory VendorOrderStatusUpdateBody([void updates(VendorOrderStatusUpdateBodyBuilder b)]) = _$VendorOrderStatusUpdateBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VendorOrderStatusUpdateBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VendorOrderStatusUpdateBody> get serializer => _$VendorOrderStatusUpdateBodySerializer();
}

class _$VendorOrderStatusUpdateBodySerializer implements PrimitiveSerializer<VendorOrderStatusUpdateBody> {
  @override
  final Iterable<Type> types = const [VendorOrderStatusUpdateBody, _$VendorOrderStatusUpdateBody];

  @override
  final String wireName = r'VendorOrderStatusUpdateBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VendorOrderStatusUpdateBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(VendorOrderStatusUpdateBodyStatusEnum),
    );
    if (object.cancellationReason != null) {
      yield r'cancellation_reason';
      yield serializers.serialize(
        object.cancellationReason,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VendorOrderStatusUpdateBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VendorOrderStatusUpdateBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VendorOrderStatusUpdateBodyStatusEnum),
          ) as VendorOrderStatusUpdateBodyStatusEnum;
          result.status = valueDes;
          break;
        case r'cancellation_reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cancellationReason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VendorOrderStatusUpdateBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VendorOrderStatusUpdateBodyBuilder();
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


class VendorOrderStatusUpdateBodyStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'confirmed')
  static const VendorOrderStatusUpdateBodyStatusEnum confirmed = _$vendorOrderStatusUpdateBodyStatusEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'processing')
  static const VendorOrderStatusUpdateBodyStatusEnum processing = _$vendorOrderStatusUpdateBodyStatusEnum_processing;
  @BuiltValueEnumConst(wireName: r'handover')
  static const VendorOrderStatusUpdateBodyStatusEnum handover = _$vendorOrderStatusUpdateBodyStatusEnum_handover;
  @BuiltValueEnumConst(wireName: r'delivered')
  static const VendorOrderStatusUpdateBodyStatusEnum delivered = _$vendorOrderStatusUpdateBodyStatusEnum_delivered;
  @BuiltValueEnumConst(wireName: r'canceled')
  static const VendorOrderStatusUpdateBodyStatusEnum canceled = _$vendorOrderStatusUpdateBodyStatusEnum_canceled;

  static Serializer<VendorOrderStatusUpdateBodyStatusEnum> get serializer => _$vendorOrderStatusUpdateBodyStatusEnumSerializer;

  const VendorOrderStatusUpdateBodyStatusEnum._(String name): super(name);

  static BuiltSet<VendorOrderStatusUpdateBodyStatusEnum> get values => _$vendorOrderStatusUpdateBodyStatusEnumValues;
  static VendorOrderStatusUpdateBodyStatusEnum valueOf(String name) => _$vendorOrderStatusUpdateBodyStatusEnumValueOf(name);
}

