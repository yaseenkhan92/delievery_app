import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SavedLocation {
  final LatLng latLng;
  final String address;

  const SavedLocation({required this.latLng, required this.address});
}

/// The one place that saves / reads the user's chosen delivery location.
class LocationStore {
  LocationStore._();

  static const String latKey = 'saved_latitude';
  static const String lngKey = 'saved_longitude';
  static const String addressKey = 'saved_address';
  static const String savedFlagKey = 'location_saved';
  static const String zoneIdsKey = 'saved_zone_ids';

  /// Saved location, or null if the user never confirmed one.
  static Future<SavedLocation?> load() async {
    final prefs = await SharedPreferences.getInstance();
    final lat = prefs.getDouble(latKey);
    final lng = prefs.getDouble(lngKey);
    if (lat == null || lng == null) return null;

    return SavedLocation(
      latLng: LatLng(lat, lng),
      address: prefs.getString(addressKey) ?? '',
    );
  }

  /// Save lat/lng + address. Old zone ids are cleared because the location
  /// changed (they are resolved again by GET /consumer/config/zone-id).
  static Future<void> save(LatLng latLng, String address) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(latKey, latLng.latitude);
    await prefs.setDouble(lngKey, latLng.longitude);
    await prefs.setString(addressKey, address);
    await prefs.setBool(savedFlagKey, true);
    await prefs.remove(zoneIdsKey);
  }

  static Future<void> saveZoneIds(List<int> ids) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(zoneIdsKey, ids.map((e) => '$e').toList());
  }

  static Future<List<int>> loadZoneIds() async {
    final prefs = await SharedPreferences.getInstance();
    final list = prefs.getStringList(zoneIdsKey) ?? const <String>[];
    return list.map(int.parse).toList();
  }
}
