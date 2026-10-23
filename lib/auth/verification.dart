import 'dart:async';
import 'package:deleivery_app/auth/appcolor.dart';
import 'package:deleivery_app/auth/authwidget.dart';
import 'package:deleivery_app/auth/setnewpass.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Step 2: 6-digit code entry with a 45s resend countdown.
class OtpVerificationScreen extends StatefulWidget {
  final String email;

  const OtpVerificationScreen({super.key, required this.email});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  static const int _otpLength = 6;
  static const int _resendSeconds = 45;

  final List<TextEditingController> _ctrls = List.generate(
    _otpLength,
    (_) => TextEditingController(),
  );
  final List<FocusNode> _nodes = List.generate(_otpLength, (_) => FocusNode());

  Timer? _timer;
  int _secondsLeft = _resendSeconds;

  bool get _isComplete => _ctrls.every((c) => c.text.isNotEmpty);
  String get _code => _ctrls.map((c) => c.text).join();

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (final c in _ctrls) {
      c.dispose();
    }
    for (final n in _nodes) {
      n.dispose();
    }
    super.dispose();
  }

  void _startTimer() {
    _timer?.cancel();
    setState(() => _secondsLeft = _resendSeconds);
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (!mounted) return;
      if (_secondsLeft <= 1) {
        t.cancel();
        setState(() => _secondsLeft = 0);
      } else {
        setState(() => _secondsLeft--);
      }
    });
  }

  String get _timeText {
    final m = (_secondsLeft ~/ 60).toString().padLeft(2, '0');
    final s = (_secondsLeft % 60).toString().padLeft(2, '0');
    return '$m:$s';
  }

  void _onChanged(int index, String value) {
    if (value.isNotEmpty && index < _otpLength - 1) {
      _nodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      _nodes[index - 1].requestFocus();
    }
    setState(() {}); // refresh Verify button state
  }

  void _verify() {
    if (!_isComplete) return;
    FocusScope.of(context).unfocus();

    // TODO: call the verify-code API with _code, then navigate on success.
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SetNewPasswordScreen(email: widget.email, code: _code),
      ),
    );
  }

  void _resend() {
    if (_secondsLeft > 0) return;
    for (final c in _ctrls) {
      c.clear();
    }
    _nodes.first.requestFocus();
    // TODO: call the "resend code" API here.
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final canResend = _secondsLeft == 0;

    return AuthScaffold(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Envelope illustration (replace with Image.asset if you have one)
          Center(
            child: Container(
              width: 96.r,
              height: 96.r,
              decoration: BoxDecoration(
                color: AppColors.brandRed.withOpacity(0.10),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.mark_email_read_outlined,
                size: 50.r,
                color: AppColors.brandRed,
              ),
            ),
          ),
          SizedBox(height: 20.h),

          AuthHeader(
            title: 'Enter Verification Code',
            subtitle: 'We have sent a 6-digit code to\n${widget.email}',
          ),
          SizedBox(height: 24.h),

          // OTP boxes
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(_otpLength, (i) => _otpBox(i)),
          ),
          SizedBox(height: 24.h),

          // Verify button (faded until all 6 digits are entered)
          SizedBox(
            height: 48.h,
            child: ElevatedButton(
              onPressed: _isComplete ? _verify : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.brandRed,
                disabledBackgroundColor: AppColors.brandRed.withOpacity(0.35),
                foregroundColor: Colors.white,
                disabledForegroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.r),
                ),
              ),
              child: Text(
                'Verify',
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(height: 18.h),

          // Timer / resend
          Center(
            child: canResend
                ? GestureDetector(
                    onTap: _resend,
                    child: Text(
                      'Resend Code',
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.brandRed,
                      ),
                    ),
                  )
                : Text.rich(
                    TextSpan(
                      text: 'Resend Code in ',
                      style: TextStyle(fontSize: 12.sp, color: Colors.black54),
                      children: [
                        TextSpan(
                          text: _timeText,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: AppColors.brandRed,
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _otpBox(int index) {
    return SizedBox(
      width: 42.w,
      height: 52.h,
      child: TextField(
        controller: _ctrls[index],
        focusNode: _nodes[index],
        autofocus: index == 0,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        onChanged: (v) => _onChanged(index, v),
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.zero,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: AppColors.brandRed, width: 1.5),
          ),
        ),
      ),
    );
  }
}
