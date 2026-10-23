import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color kBrandRed = Color(0xFFC1291C);

class EmptyCartScreen extends StatelessWidget {
  final VoidCallback? onBrowseRestaurants;

  const EmptyCartScreen({super.key, this.onBrowseRestaurants});

  @override
  Widget build(BuildContext context) {
    // ⬇️ Same pattern as your other screens (login/checkout/track order) —
    // clamps accessibility font scaling so a large system font size can't
    // push this layout into overflow on any device.
    final textScaler = MediaQuery.textScalerOf(
      context,
    ).clamp(minScaleFactor: 0.8, maxScaleFactor: 1.15);

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: textScaler),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24.w, 28.h, 24.w, 30.h),
          child: Column(
            children: [
              // ==============================================================
              // EMPTY CART IMAGE
              // ==============================================================
              // ⬇️ ScreenUtil's .w already scales this relative to design
              // width, but a ConstrainedBox keeps it from ever exceeding a
              // sensible share of the actual screen on very narrow or very
              // wide devices (small phones, tablets, foldables).
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 310.w, maxHeight: 310.w),
                child: Image.asset(
                  'assets/cartimage.png',
                  width: 210.w,
                  height: 210.w,
                  fit: BoxFit.contain,
                ),
              ),

              SizedBox(height: 4.h),

              // ==============================================================
              // TITLE
              // ==============================================================
              Text(
                'Your cart is empty',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),

              SizedBox(height: 10.h),

              // ==============================================================
              // DESCRIPTION
              // ==============================================================
              Text(
                'Looks like you haven\u2019t added anything yet.\n'
                'Discover delicious food from your favorite\n'
                'restaurants!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  height: 1.5,
                  color: Colors.grey.shade600,
                ),
              ),

              SizedBox(height: 26.h),

              // ==============================================================
              // BROWSE RESTAURANTS
              // ==============================================================
              GestureDetector(
                onTap: onBrowseRestaurants,
                child: Container(
                  width: double.infinity,
                  height: 54.h,
                  decoration: BoxDecoration(
                    color: kBrandRed,
                    borderRadius: BorderRadius.circular(28.r),
                    boxShadow: [
                      BoxShadow(
                        color: kBrandRed.withOpacity(0.30),
                        blurRadius: 14.r,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Text(
                        'Browse restaurants',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      Positioned(
                        right: 14.w,
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                          size: 23.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 18.h),

              // ==============================================================
              // POPULAR DISHES
              // ==============================================================
              GestureDetector(
                onTap: onBrowseRestaurants,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'See popular dishes',
                      style: TextStyle(
                        color: kBrandRed,
                        fontSize: 14.5.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(width: 7.w),

                    Icon(
                      Icons.arrow_forward_rounded,
                      color: kBrandRed,
                      size: 20.sp,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
