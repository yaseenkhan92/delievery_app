import 'package:deleivery_app/api/baseapi.dart'; // ApiException
import 'package:deleivery_app/api/loginapi.dart';
import 'package:deleivery_app/auth/appcolor.dart';
import 'package:deleivery_app/auth/authwidget.dart';
import 'package:deleivery_app/auth/forgotpassword.dart';
import 'package:deleivery_app/auth/signup.dart';
import 'package:deleivery_app/auth/validation.dart';
import 'package:deleivery_app/home/homescreen.dart';
// TODO: import your real home screen file, e.g.:
// import 'package:deleivery_app/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Full-screen "Welcome Back" page (opened from Sign Up -> "Sign In").
class SignInScreen extends StatefulWidget {
  final SocialAuthActions? actions;

  const SignInScreen({super.key, this.actions});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _idCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();

  bool _obscurePassword = true;
  bool _loading = false;

  @override
  void dispose() {
    _idCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (_loading) return; // ignore double taps
    FocusScope.of(context).unfocus();
    if (!(_formKey.currentState?.validate() ?? false)) return;

    final id = _idCtrl.text.trim();
    final fieldType = id.contains('@') ? 'email' : 'phone';

    setState(() => _loading = true);
    try {
      final result = await LoginApi.login(
        emailOrPhone: id,
        password: _passwordCtrl.text,
        fieldType: fieldType,
      );

      if (!mounted) return;

      if (result.isProfileComplete) {
        _goToHome();
      } else {
        // Server says the profile is incomplete (is_personal_info != 1).
        // Send the user to your "complete profile" screen, which calls
        // PUT /consumer/update-profile.
        _showMessage('Please complete your profile to continue.');
        // Navigator.pushReplacement(context,
        //   MaterialPageRoute(builder: (_) => const CompleteProfileScreen()));
      }
    } on ApiException catch (e) {
      if (!mounted) return;
      _showMessage(e.message);
    } catch (_) {
      if (!mounted) return;
      _showMessage('Something went wrong. Please try again.');
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  /// Replace the whole stack so Back never returns to sign in / sign up.
  void _goToHome() {
    Navigator.pushAndRemoveUntil(
      context,
      // TODO: replace HomeScreen with your real home widget.
      MaterialPageRoute(builder: (_) => const HomeScreen()),
      (route) => false,
    );
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  /// Opens the Forgot Password full screen (then OTP screen).
  void _forgotPassword() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const ForgotPasswordScreen()),
    );
  }

  /// "Sign Up" -> back to the Sign Up screen (replace, don't stack).
  void _goToSignUp() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => SignUpScreen(actions: widget.actions)),
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
              title: 'Welcome Back',
              subtitle: 'Sign in to continue and satisfy your cravings.',
            ),
            SizedBox(height: 24.h),

            AuthField(
              controller: _idCtrl,
              hint: 'Email or Phone Number',
              icon: Icons.mail_outline,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              validator: Validators.emailOrPhone,
            ),
            SizedBox(height: 12.h),

            AuthField(
              controller: _passwordCtrl,
              hint: 'Password',
              icon: Icons.lock_outline,
              obscureText: _obscurePassword,
              textInputAction: TextInputAction.done,
              onSubmitted: (_) => _submit(),
              validator: Validators.loginPassword,
              suffix: PasswordEyeButton(
                obscured: _obscurePassword,
                onPressed: () =>
                    setState(() => _obscurePassword = !_obscurePassword),
              ),
            ),
            SizedBox(height: 8.h),

            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: _forgotPassword,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.h),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.brandRed,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 14.h),

            AuthPrimaryButton(
              label: _loading ? 'Signing in...' : 'Sign In',
              onPressed: _submit,
            ),
            SizedBox(height: 18.h),

            const AuthOrDivider(),
            SizedBox(height: 16.h),

            SocialLoginRow(actions: widget.actions),
            SizedBox(height: 18.h),

            AuthSwitchPrompt(
              question: "Don't have an account?",
              action: 'Sign Up',
              onTap: _goToSignUp,
            ),
          ],
        ),
      ),
    );
  }
}
