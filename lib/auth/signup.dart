import 'package:deleivery_app/api/baseapi.dart';
import 'package:deleivery_app/api/auth_api.dart';
import 'package:deleivery_app/auth/appcolor.dart';
import 'package:deleivery_app/auth/authwidget.dart';
import 'package:deleivery_app/auth/signinScreen.dart';
import 'package:deleivery_app/auth/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Full-screen Sign Up page (opened from "View more methods").
class SignUpScreen extends StatefulWidget {
  final SocialAuthActions? actions;

  const SignUpScreen({super.key, this.actions});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameCtrl = TextEditingController();
  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _phoneCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();

  bool _obscurePassword = true;
  bool _loading = false; // true while the request is in flight

  @override
  void dispose() {
    _nameCtrl.dispose();
    _emailCtrl.dispose();
    _phoneCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  void _showMessage(String text) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(text)));
  }

  /// Sign Up button:
  /// 1) validate the form  2) call the API  3) show result / go to Sign In
  Future<void> _submit() async {
    FocusScope.of(context).unfocus();
    if (_loading) return; // ignore double taps
    if (!(_formKey.currentState?.validate() ?? false)) return;

    setState(() => _loading = true);
    try {
      final data = await AuthApi.register(
        fullName: _nameCtrl.text,
        phone: _phoneCtrl.text,
        email: _emailCtrl.text,
        password: _passwordCtrl.text,
      );
      debugPrint('Register response: $data');

      if (!mounted) return;
      _showMessage('Account created. Please sign in.');
      _goToSignIn();
    } on ApiException catch (e) {
      if (!mounted) return;
      _showMessage(e.message); // e.g. "Phone already registered"
    } catch (e) {
      if (!mounted) return;
      _showMessage('Unexpected error. Please try again.');
      debugPrint('Register error: $e');
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  /// "Sign In" -> Welcome Back screen. pushReplacement keeps the back button
  /// going straight to the login landing screen (no pile of screens).
  void _goToSignIn() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => SignInScreen(actions: widget.actions)),
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
            const AuthHeader(
              title: 'Create Account',
              subtitle: 'Sign up to start ordering your favorite food.',
            ),
            SizedBox(height: 24.h),

            AuthField(
              controller: _nameCtrl,
              hint: 'Full Name',
              icon: Icons.person_outline,
              keyboardType: TextInputType.name,
              textCapitalization: TextCapitalization.words,
              textInputAction: TextInputAction.next,
              validator: Validators.fullName,
            ),
            SizedBox(height: 12.h),

            AuthField(
              controller: _emailCtrl,
              hint: 'Email Address',
              icon: Icons.mail_outline,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              validator: Validators.email,
            ),
            SizedBox(height: 12.h),

            AuthField(
              controller: _phoneCtrl,
              hint: '+92 300 0000000',
              icon: Icons.phone_outlined,
              prefix: const _PhonePrefix(),
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.next,
              validator: Validators.phone,
            ),
            SizedBox(height: 12.h),

            AuthField(
              controller: _passwordCtrl,
              hint: 'Create Password',
              icon: Icons.lock_outline,
              obscureText: _obscurePassword,
              textInputAction: TextInputAction.done,
              onSubmitted: (_) => _submit(),
              validator: Validators.password,
              suffix: PasswordEyeButton(
                obscured: _obscurePassword,
                onPressed: () =>
                    setState(() => _obscurePassword = !_obscurePassword),
              ),
            ),
            SizedBox(height: 18.h),

            // Thin progress bar while the request is running.
            if (_loading)
              Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.r),
                  child: LinearProgressIndicator(
                    minHeight: 3.h,
                    color: AppColors.brandRed,
                    backgroundColor: AppColors.brandRed.withOpacity(0.15),
                  ),
                ),
              ),

            AuthPrimaryButton(label: 'Sign Up', onPressed: _submit),
            SizedBox(height: 18.h),

            const AuthOrDivider(),
            SizedBox(height: 16.h),

            SocialLoginRow(actions: widget.actions),
            SizedBox(height: 18.h),

            AuthSwitchPrompt(
              question: 'Already have an account?',
              action: 'Sign In',
              onTap: _goToSignIn,
            ),
          ],
        ),
      ),
    );
  }
}

// Phone icon + country flag + dropdown arrow (flag is an emoji: no asset needed)
class _PhonePrefix extends StatelessWidget {
  const _PhonePrefix();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.w, right: 6.w),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.phone_outlined, size: 20.r, color: AppColors.iconGrey),
          SizedBox(width: 10.w),
          Text('🇵🇰', style: TextStyle(fontSize: 18.sp)),
          Icon(Icons.arrow_drop_down, size: 20.r, color: AppColors.iconGrey),
        ],
      ),
    );
  }
}
