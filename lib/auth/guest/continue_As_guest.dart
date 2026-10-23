import 'package:deleivery_app/api/baseapi.dart'; // ApiException

import 'package:deleivery_app/auth/appcolor.dart';
import 'package:deleivery_app/auth/guest/guest_Session.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Pill-shaped "Continue as a Guest" button, same look as
/// "Continue with Google". Calls the guest API, then runs [onSuccess]
/// (use it to open Home).
class ContinueAsGuestButton extends StatefulWidget {
  final VoidCallback onSuccess;

  const ContinueAsGuestButton({super.key, required this.onSuccess});

  @override
  State<ContinueAsGuestButton> createState() => _ContinueAsGuestButtonState();
}

class _ContinueAsGuestButtonState extends State<ContinueAsGuestButton> {
  bool _loading = false;

  Future<void> _onTap() async {
    if (_loading) return; // ignore double taps
    setState(() => _loading = true);
    try {
      await GuestSession.enter(); // hits the guest API
      if (!mounted) return;
      widget.onSuccess();
    } on ApiException catch (e) {
      if (!mounted) return;
      _show(e.message);
    } catch (_) {
      if (!mounted) return;
      _show('Something went wrong. Please try again.');
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  void _show(String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 46.h,
      child: OutlinedButton(
        onPressed: _loading ? null : _onTap,
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.grey.shade300),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.r),
          ),
        ),
        child: _loading
            ? SizedBox(
                width: 20.w,
                height: 20.w,
                child: CircularProgressIndicator(strokeWidth: 2.w),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person_outline,
                    size: 18.r,
                    color: AppColors.textDark,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'Continue as a Guest',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textDark,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
