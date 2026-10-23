import 'package:deleivery_app/auth/appcolor.dart';
import 'package:deleivery_app/auth/authwidget.dart';

import 'package:deleivery_app/auth/validation.dart';
import 'package:deleivery_app/auth/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Step 1: user enters email -> "Send Code" -> OTP screen.
class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailCtrl = TextEditingController();

  @override
  void dispose() {
    _emailCtrl.dispose();
    super.dispose();
  }

  void _sendCode() {
    FocusScope.of(context).unfocus();
    if (!(_formKey.currentState?.validate() ?? false)) return;

    // TODO: call the "send reset code" API here, then navigate on success.
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => OtpVerificationScreen(email: _emailCtrl.text.trim()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Lock illustration (replace with Image.asset if you have one)
            Center(
              child: Container(
                width: 96.r,
                height: 96.r,
                decoration: BoxDecoration(
                  color: AppColors.brandRed.withOpacity(0.10),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.lock_open_rounded,
                  size: 52.r,
                  color: AppColors.brandRed,
                ),
              ),
            ),
            SizedBox(height: 20.h),

            const AuthHeader(
              title: 'Forgot Password?',
              subtitle:
                  "No worries! Enter your email address and we'll send you a code to reset your password.",
            ),
            SizedBox(height: 24.h),

            AuthField(
              controller: _emailCtrl,
              hint: 'Email Address',
              icon: Icons.mail_outline,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              onSubmitted: (_) => _sendCode(),
              validator: Validators.email,
            ),
            SizedBox(height: 20.h),

            AuthPrimaryButton(label: 'Send Code', onPressed: _sendCode),
          ],
        ),
      ),
    );
  }
}
