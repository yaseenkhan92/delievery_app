import 'package:deleivery_app/api/baseapi.dart';

/// Guest endpoint. Screens never call this directly; use GuestSession.enter().
class GuestApi {
  GuestApi._();

  /// TODO: put your real guest endpoint here (one place to change).
  static const String _path = '/consumer/guest/request';

  /// Creates a guest on the server.
  /// Returns data["guest_id"] (or data["id"]) and, if the server also sends
  /// a token for guests, that token.
  static Future<({int? guestId, String? token})> createGuest() async {
    final res = await ApiClient.instance.post(_path, {});

    final raw = res['data'];
    final data = raw is Map<String, dynamic> ? raw : <String, dynamic>{};

    final idValue = data['guest_id'] ?? data['id'];
    final guestId = idValue is int ? idValue : int.tryParse('$idValue');
    final token = data['token'] as String?;

    return (guestId: guestId, token: token);
  }
}
