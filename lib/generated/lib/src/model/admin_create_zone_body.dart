//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_create_zone_body.g.dart';

/// AdminCreateZoneBody
///
/// Properties:
/// * [name] 
/// * [displayName] 
/// * [status] 
/// * [coordinates] - Each pair is [longitude, latitude] — NOT [lat, lng]. After create, formated_coordinates should show lat ~33 and lng ~73 for Islamabad.
/// * [perKmShippingCharge] 
/// * [minimumShippingCharge] 
/// * [maximumShippingCharge] 
/// * [maxCodOrderAmount] 
@BuiltValue()
abstract class AdminCreateZoneBody implements Built<AdminCreateZoneBody, AdminCreateZoneBodyBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'display_name')
  String? get displayName;

  @BuiltValueField(wireName: r'status')
  bool? get status;

  /// Each pair is [longitude, latitude] — NOT [lat, lng]. After create, formated_coordinates should show lat ~33 and lng ~73 for Islamabad.
  @BuiltValueField(wireName: r'coordinates')
  BuiltList<BuiltList<num>> get coordinates;

  @BuiltValueField(wireName: r'per_km_shipping_charge')
  num? get perKmShippingCharge;

  @BuiltValueField(wireName: r'minimum_shipping_charge')
  num? get minimumShippingCharge;

  @BuiltValueField(wireName: r'maximum_shipping_charge')
  num? get maximumShippingCharge;

  @BuiltValueField(wireName: r'max_cod_order_amount')
  num? get maxCodOrderAmount;

  AdminCreateZoneBody._();

  factory AdminCreateZoneBody([void updates(AdminCreateZoneBodyBuilder b)]) = _$AdminCreateZoneBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminCreateZoneBodyBuilder b) => b
      ..status = true;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminCreateZoneBody> get serializer => _$AdminCreateZoneBodySerializer();
}

class _$AdminCreateZoneBodySerializer implements PrimitiveSerializer<AdminCreateZoneBody> {
  @override
  final Iterable<Type> types = const [AdminCreateZoneBody, _$AdminCreateZoneBody];

  @override
  final String wireName = r'AdminCreateZoneBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminCreateZoneBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.displayName != null) {
      yield r'display_name';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    yield r'coordinates';
    yield serializers.serialize(
      object.coordinates,
      specifiedType: const FullType(BuiltList, [FullType(BuiltList, [FullType(num)])]),
    );
    if (object.perKmShippingCharge != null) {
      yield r'per_km_shipping_charge';
      yield serializers.serialize(
        object.perKmShippingCharge,
        specifiedType: const FullType(num),
      );
    }
    if (object.minimumShippingCharge != null) {
      yield r'minimum_shipping_charge';
      yield serializers.serialize(
        object.minimumShippingCharge,
        specifiedType: const FullType(num),
      );
    }
    if (object.maximumShippingCharge != null) {
      yield r'maximum_shipping_charge';
      yield serializers.serialize(
        object.maximumShippingCharge,
        specifiedType: const FullType(num),
      );
    }
    if (object.maxCodOrderAmount != null) {
      yield r'max_cod_order_amount';
      yield serializers.serialize(
        object.maxCodOrderAmount,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminCreateZoneBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdminCreateZoneBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'coordinates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltList, [FullType(num)])]),
          ) as BuiltList<BuiltList<num>>;
          result.coordinates.replace(valueDes);
          break;
        case r'per_km_shipping_charge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.perKmShippingCharge = valueDes;
          break;
        case r'minimum_shipping_charge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.minimumShippingCharge = valueDes;
          break;
        case r'maximum_shipping_charge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.maximumShippingCharge = valueDes;
          break;
        case r'max_cod_order_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.maxCodOrderAmount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminCreateZoneBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminCreateZoneBodyBuilder();
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


