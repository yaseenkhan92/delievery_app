/// Form validators. Each returns an error message, or null when valid.
/// Usage: validator: Validators.email
class Validators {
  Validators._(); // static-only class

  static String? fullName(String? value) {
    final String v = value?.trim() ?? '';
    if (v.isEmpty) return 'Please enter your full name';
    if (v.length < 2) return 'Name is too short';
    return null;
  }

  static String? email(String? value) {
    final String v = value?.trim() ?? '';
    if (v.isEmpty) return 'Please enter your email';
    if (!RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(v)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  /// Accepts "+92 300 1234567", "+923001234567", "0300-1234567" ...
  static String? phone(String? value) {
    final String v = (value ?? '').replaceAll(RegExp(r'[\s-]'), '');
    if (v.isEmpty) return 'Please enter your phone number';
    if (!RegExp(r'^\+?\d{9,15}$').hasMatch(v)) {
      return 'Enter a valid phone number';
    }
    return null;
  }

  /// The API requires at least 8 characters for consumer passwords.
  static String? password(String? value, {int minLength = 8}) {
    final String v = value ?? '';
    if (v.isEmpty) return 'Please create a password';
    if (v.length < minLength) {
      return 'Password must be at least $minLength characters';
    }
    return null;
  }

  /// Sign-in identifier: an email if it contains '@', otherwise a phone number.
  static String? emailOrPhone(String? value) {
    final String v = value?.trim() ?? '';
    if (v.isEmpty) return 'Please enter your email or phone number';
    return v.contains('@') ? email(v) : phone(v);
  }

  /// Sign-in password (the API requires at least 6 characters).
  static String? loginPassword(String? value, {int minLength = 6}) {
    final String v = value ?? '';
    if (v.isEmpty) return 'Please enter your password';
    if (v.length < minLength) {
      return 'Password must be at least $minLength characters';
    }
    return null;
  }
}
