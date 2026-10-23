import 'package:deleivery_app/auth/appcolor.dart';
import 'package:deleivery_app/auth/responsiveutils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Shared building blocks for the Sign Up and Sign In screens.

/// What happens when the user taps Google / Apple / Facebook.
/// A null action means "not connected yet" (the button does nothing).
class SocialAuthActions {
  final VoidCallback? onGoogle;
  final VoidCallback? onApple;
  final VoidCallback? onFacebook;

  const SocialAuthActions({this.onGoogle, this.onApple, this.onFacebook});
}

/// Full-screen white page: back button on top, content scrolls and is
/// vertically centered on tall screens, width capped on tablets.
class AuthScaffold extends StatelessWidget {
  final Widget child;

  const AuthScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: ResponsiveUtils.clampedMediaQuery(context),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () => Navigator.of(context).maybePop(),
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 20.r,
                    color: AppColors.textDark,
                  ),
                ),
              ),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return SingleChildScrollView(
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight,
                        ),
                        child: Center(
                          child: ConstrainedBox(
                            // max content width on tablets (not scaled on purpose)
                            constraints: const BoxConstraints(maxWidth: 480),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                20.w,
                                8.h,
                                20.w,
                                24.h,
                              ),
                              child: child,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Centered bold title + grey subtitle ("Welcome Back" ...)
class AuthHeader extends StatelessWidget {
  final String title;
  final String subtitle;

  const AuthHeader({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.textDark,
          ),
        ),
        SizedBox(height: 6.h),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 13.sp, color: Colors.grey[600]),
        ),
      ],
    );
  }
}

/// Rounded text field with a leading icon.
class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final IconData icon;
  final Widget? prefix; // replaces the plain icon (used by the phone field)
  final Widget? suffix;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onSubmitted;

  const AuthField({
    super.key,
    required this.controller,
    required this.hint,
    required this.icon,
    this.prefix,
    this.suffix,
    this.obscureText = false,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.validator,
    this.onSubmitted,
  });

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(14.r),
    borderSide: BorderSide(color: color),
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      textCapitalization: textCapitalization,
      validator: validator,
      onFieldSubmitted: onSubmitted,
      style: TextStyle(fontSize: 14.sp, color: AppColors.textDark),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(fontSize: 14.sp, color: AppColors.hintGrey),
        errorStyle: TextStyle(fontSize: 11.5.sp),
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 15.h),
        prefixIcon:
            prefix ??
            Padding(
              padding: EdgeInsets.only(left: 12.w, right: 8.w),
              child: Icon(icon, size: 20.r, color: AppColors.iconGrey),
            ),
        prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        suffixIcon: suffix,
        enabledBorder: _border(AppColors.fieldBorder),
        focusedBorder: _border(AppColors.brandRed),
        errorBorder: _border(AppColors.brandRed),
        focusedErrorBorder: _border(AppColors.brandRed),
      ),
    );
  }
}

/// Eye icon that shows / hides the password.
class PasswordEyeButton extends StatelessWidget {
  final bool obscured;
  final VoidCallback onPressed;

  const PasswordEyeButton({
    super.key,
    required this.obscured,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        obscured ? Icons.visibility_outlined : Icons.visibility_off_outlined,
        size: 20.r,
        color: AppColors.iconGrey,
      ),
    );
  }
}

/// Big red pill button ("Sign Up" / "Sign In").
class AuthPrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const AuthPrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.brandRed,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.r),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

/// ——— OR CONTINUE WITH ———
class AuthOrDivider extends StatelessWidget {
  const AuthOrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(color: AppColors.divider)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Text(
            'OR CONTINUE WITH',
            style: TextStyle(
              fontSize: 10.5.sp,
              letterSpacing: 0.8,
              fontWeight: FontWeight.w500,
              color: AppColors.hintGrey,
            ),
          ),
        ),
        const Expanded(child: Divider(color: AppColors.divider)),
      ],
    );
  }
}

/// Google / Apple / Facebook buttons.
class SocialLoginRow extends StatelessWidget {
  final SocialAuthActions? actions;

  const SocialLoginRow({super.key, this.actions});

  /// Leave the auth screen first, then run the action. The action (e.g.
  /// pushReplacement from the login screen) then replaces the login screen
  /// instead of this auth screen.
  void _closeThen(BuildContext context, VoidCallback? action) {
    if (action == null) return;
    Navigator.of(context).pop();
    action();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _SocialButton(
            onTap: () => _closeThen(context, actions?.onGoogle),
            icon: Image.asset(
              'assets/google.png',
              width: 22.r,
              height: 22.r,
              errorBuilder: (context, error, stack) => Icon(
                Icons.g_mobiledata_rounded,
                size: 30.r,
                color: AppColors.brandRed,
              ),
            ),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: _SocialButton(
            onTap: () => _closeThen(context, actions?.onApple),
            icon: Icon(Icons.apple, size: 26.r, color: Colors.black),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: _SocialButton(
            onTap: () => _closeThen(context, actions?.onFacebook),
            icon: Icon(
              Icons.facebook,
              size: 26.r,
              color: AppColors.facebookBlue,
            ),
          ),
        ),
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onTap;

  const _SocialButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          side: const BorderSide(color: AppColors.fieldBorder),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.r),
          ),
        ),
        child: icon,
      ),
    );
  }
}

/// "Already have an account? Sign In"  /  "Don't have an account? Sign Up"
class AuthSwitchPrompt extends StatelessWidget {
  final String question;
  final String action;
  final VoidCallback onTap;

  const AuthSwitchPrompt({
    super.key,
    required this.question,
    required this.action,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Text(
          '$question ',
          style: TextStyle(fontSize: 13.sp, color: Colors.grey[600]),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            action,
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.brandRed,
            ),
          ),
        ),
      ],
    );
  }
}
