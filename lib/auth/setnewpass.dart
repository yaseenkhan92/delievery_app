import 'package:deleivery_app/auth/appcolor.dart';
import 'package:deleivery_app/auth/authwidget.dart';
import 'package:deleivery_app/auth/passwordChanged.dart';
import 'package:deleivery_app/auth/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Step 3: user sets a new password -> "Update Password" -> success screen.
class SetNewPasswordScreen extends StatefulWidget {
  final String email;
  final String code;

  const SetNewPasswordScreen({
    super.key,
    required this.email,
    required this.code,
  });

  @override
  State<SetNewPasswordScreen> createState() => _SetNewPasswordScreenState();
}

class _SetNewPasswordScreenState extends State<SetNewPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _newCtrl = TextEditingController();
  final TextEditingController _confirmCtrl = TextEditingController();

  bool _obscureNew = true;
  bool _obscureConfirm = true;

  @override
  void dispose() {
    _newCtrl.dispose();
    _confirmCtrl.dispose();
    super.dispose();
  }

  String? _confirmValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    }
    if (value != _newCtrl.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  void _updatePassword() {
    FocusScope.of(context).unfocus();
    if (!(_formKey.currentState?.validate() ?? false)) return;

    // TODO: call the reset-password API here. Values available:
    //   email    : widget.email
    //   otp code : widget.code
    //   password : _newCtrl.text
    // Then, on success, open the success screen:
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const PasswordChangedScreen()),
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
            // Lock + check illustration (replace with Image.asset if you have one)
            Center(
              child: SizedBox(
                width: 120.r,
                height: 110.r,
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 96.r,
                      height: 96.r,
                      decoration: BoxDecoration(
                        color: AppColors.brandRed.withOpacity(0.10),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.lock_rounded,
                        size: 52.r,
                        color: AppColors.brandRed,
                      ),
                    ),
                    Positioned(
                      right: 4.r,
                      bottom: 4.r,
                      child: Container(
                        width: 36.r,
                        height: 36.r,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.brandRed.withOpacity(0.35),
                          ),
                        ),
                        child: Icon(
                          Icons.check_rounded,
                          size: 22.r,
                          color: AppColors.brandRed,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),

            const AuthHeader(
              title: 'Set New Password',
              subtitle: 'Choose a strong password to keep your account secure.',
            ),
            SizedBox(height: 24.h),

            AuthField(
              controller: _newCtrl,
              hint: 'New Password',
              icon: Icons.lock_outline,
              obscureText: _obscureNew,
              textInputAction: TextInputAction.next,
              validator: Validators.password,
              suffix: PasswordEyeButton(
                obscured: _obscureNew,
                onPressed: () => setState(() => _obscureNew = !_obscureNew),
              ),
            ),
            SizedBox(height: 12.h),

            AuthField(
              controller: _confirmCtrl,
              hint: 'Confirm New Password',
              icon: Icons.lock_outline,
              obscureText: _obscureConfirm,
              textInputAction: TextInputAction.done,
              onSubmitted: (_) => _updatePassword(),
              validator: _confirmValidator,
              suffix: PasswordEyeButton(
                obscured: _obscureConfirm,
                onPressed: () =>
                    setState(() => _obscureConfirm = !_obscureConfirm),
              ),
            ),
            SizedBox(height: 20.h),

            AuthPrimaryButton(
              label: 'Update Password',
              onPressed: _updatePassword,
            ),
          ],
        ),
      ),
    );
  }
}
