import 'package:deleivery_app/api/baseapi.dart';
import 'package:deleivery_app/api/guest_api.dart';
import 'package:deleivery_app/api/tokenstorage.dart';
import 'package:deleivery_app/auth/signinScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// TODO: adjust this import to where your SignInScreen lives.

/// Tracks whether the user is browsing as a guest (no login).
class GuestSession {
  GuestSession._();

  static const String _guestKey = 'is_guest';
  static const String _guestIdKey = 'guest_id';

  /// true = browsing without an account.
  static bool isGuest = false;

  /// Server guest id (sent to the login API so the guest cart is merged).
  static int? guestId;

  /// Call once at app start (together with TokenStorage.restore()).
  static Future<void> restore() async {
    final prefs = await SharedPreferences.getInstance();
    isGuest = prefs.getBool(_guestKey) ?? false;
    guestId = prefs.getInt(_guestIdKey);
  }

  /// "Continue as a Guest": hits the guest API, then remembers the guest.
  /// Throws ApiException if the API call fails.
  static Future<void> enter() async {
    // Never send an old login token to the guest endpoint.
    ApiClient.instance.clearToken();

    final result = await GuestApi.createGuest();

    isGuest = true;
    guestId = result.guestId;

    // Use the guest token if the server gives one, otherwise no auth header.
    if (result.token != null && result.token!.isNotEmpty) {
      await TokenStorage.save(result.token!); // saved on the phone too
    } else {
      await TokenStorage.clear();
    }

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_guestKey, true);
    if (guestId != null) {
      await prefs.setInt(_guestIdKey, guestId!);
    }
  }

  /// Called automatically after a successful login / signup.
  static Future<void> clear() async {
    isGuest = false;
    guestId = null;
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_guestKey);
    await prefs.remove(_guestIdKey);
  }

  /// Use before actions that need an account (checkout, orders, profile...).
  /// Returns true if the user is logged in and can continue.
  static Future<bool> requireLogin(BuildContext context) async {
    if (!isGuest) return true;

    final goLogin = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Sign in required'),
        content: const Text('Please sign in to continue.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Not now'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Sign In'),
          ),
        ],
      ),
    );

    if (goLogin == true && context.mounted) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const SignInScreen()),
      );
    }
    return false;
  }
}
