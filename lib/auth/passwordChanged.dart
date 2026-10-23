import 'package:deleivery_app/auth/appcolor.dart';
import 'package:deleivery_app/auth/authwidget.dart';
import 'package:deleivery_app/auth/signinScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Step 4: success screen -> "Go to Login".
class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  /// Go to the sign-in screen and clear the reset-password screens.
  /// The first route (login landing) stays underneath.
  void _goToLogin(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const SignInScreen()),
      (route) => route.isFirst,
    );
  }

  @override
  Widget build(BuildContext context) {
    // Block the system back button: the reset is finished.
    return PopScope(
      canPop: false,
      child: AuthScaffold(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(child: _SuccessIllustration()),
            SizedBox(height: 24.h),

            const AuthHeader(
              title: 'Password Changed!',
              subtitle:
                  'Your password has been updated successfully. You can now sign in with your new password.',
            ),
            SizedBox(height: 28.h),

            AuthPrimaryButton(
              label: 'Go to Login',
              onPressed: () => _goToLogin(context),
            ),
          ],
        ),
      ),
    );
  }
}

/// Green check circle with small confetti pieces around it.
class _SuccessIllustration extends StatelessWidget {
  const _SuccessIllustration();

  static const Color _green = Color(0xFF4CAF50);
  static const Color _yellow = Color(0xFFF5B82E);

  Widget _confetti({
    required double top,
    required double left,
    required Color color,
  }) {
    return Positioned(
      top: top.h,
      left: left.w,
      child: Transform.rotate(
        angle: 0.8,
        child: Container(
          width: 10.r,
          height: 10.r,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2.r),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190.w,
      height: 150.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 96.r,
            height: 96.r,
            decoration: const BoxDecoration(
              color: _green,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.check_rounded, size: 56.r, color: Colors.white),
          ),
          _confetti(top: 14, left: 140, color: AppColors.brandRed),
          _confetti(top: 30, left: 24, color: AppColors.brandRed),
          _confetti(top: 62, left: 8, color: _yellow),
          _confetti(top: 58, left: 168, color: _yellow),
          _confetti(top: 110, left: 30, color: _yellow),
          _confetti(
            top: 104,
            left: 150,
            color: AppColors.brandRed.withOpacity(0.6),
          ),
        ],
      ),
    );
  }
}
