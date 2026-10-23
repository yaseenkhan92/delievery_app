import 'package:deleivery_app/auth/appcolor.dart';
import 'package:deleivery_app/auth/authwidget.dart';
import 'package:deleivery_app/auth/guest/continue_As_guest.dart';

import 'package:deleivery_app/auth/responsiveutils.dart';
import 'package:deleivery_app/auth/signup.dart';
import 'package:deleivery_app/screens/location/deleiveryAddressScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ---------------- LOGIN SCREEN ----------------
class LoginScreen extends StatelessWidget {
  final String selectedCountry;

  const LoginScreen({super.key, required this.selectedCountry});

  void _goToDeliveryAddress(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const DeliveryAddressScreen()),
    );
  }

  /// "View more methods" -> full-screen Sign Up page (not a popup).
  void _openSignUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SignUpScreen(
          actions: SocialAuthActions(
            onGoogle: () => _goToDeliveryAddress(context),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: ResponsiveUtils.clampedMediaQuery(context),
      child: Scaffold(
        backgroundColor: AppColors.brandRedSheet,
        body: Column(
          children: [
            const Expanded(
              flex: 7, // was 8: a bit more room for the sheet (guest button)
              child: SafeArea(bottom: false, child: _ManIllustration()),
            ),
            Expanded(
              flex: 4, // was 3
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(28.r),
                  ),
                ),
                child: SafeArea(
                  top: false,
                  // Safety net only (extreme accessibility font sizes).
                  child: SingleChildScrollView(
                    physics: const ClampingScrollPhysics(),
                    child: Center(
                      child: ConstrainedBox(
                        // max content width on tablets (not scaled on purpose)
                        constraints: const BoxConstraints(maxWidth: 480),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20.w, 14.h, 20.w, 10.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sign up or log in',
                                style: TextStyle(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textDark,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                'Select your preferred method to continue',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(height: 12.h),

                              GoogleSignInButton(
                                onPressed: () => _goToDeliveryAddress(context),
                              ),

                              SizedBox(height: 8.h),

                              // Calls the guest API, then opens the same
                              // screen Google sign-in opens.
                              ContinueAsGuestButton(
                                onSuccess: () => _goToDeliveryAddress(context),
                              ),

                              SizedBox(height: 8.h),

                              Center(
                                child: GestureDetector(
                                  onTap: () => _openSignUp(context),
                                  child: Text(
                                    'View more methods',
                                    style: TextStyle(
                                      fontSize: 12.5.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.textDark,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 8.h),

                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Colors.grey[600],
                                  ),
                                  children: const [
                                    TextSpan(
                                      text: 'By signing up you agree to our ',
                                    ),
                                    TextSpan(
                                      text: 'Terms and Conditions',
                                      style: TextStyle(
                                        color: AppColors.brandRedSheet,
                                      ),
                                    ),
                                    TextSpan(text: ' and '),
                                    TextSpan(
                                      text: 'Privacy Policy',
                                      style: TextStyle(
                                        color: AppColors.brandRedSheet,
                                      ),
                                    ),
                                    TextSpan(text: '.'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// MAN ILLUSTRATION (sized from its parent's constraints, so no .w/.h needed)
// =============================================================================
class _ManIllustration extends StatelessWidget {
  const _ManIllustration();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double boxWidth = constraints.maxWidth;
        final double boxHeight = constraints.maxHeight;

        return Align(
          alignment: Alignment.bottomCenter,
          child: FractionallySizedBox(
            widthFactor: 0.85,
            heightFactor: 0.85,
            child: SizedBox(
              width: boxWidth,
              height: boxHeight,
              child: FittedBox(
                fit: BoxFit.contain,
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/man.png',
                  errorBuilder: (context, error, stackTrace) => SizedBox(
                    width: boxWidth * 0.5,
                    height: boxWidth * 0.5,
                    child: Icon(
                      Icons.delivery_dining,
                      color: Colors.white.withOpacity(0.6),
                      size: boxWidth * 0.4,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

// ---------------- GOOGLE SIGN-IN BUTTON ----------------
class GoogleSignInButton extends StatelessWidget {
  final VoidCallback onPressed;

  const GoogleSignInButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 46.h,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.grey.shade300),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 18.r,
              height: 18.r,
              child: Image.asset(
                'assets/google.png',
                errorBuilder: (context, error, stackTrace) => Icon(
                  Icons.g_mobiledata_rounded,
                  size: 18.r,
                  color: AppColors.brandRed,
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Flexible(
              child: Text(
                'Continue with Google',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textDark,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
