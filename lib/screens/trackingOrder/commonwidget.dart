import 'package:deleivery_app/screens/trackingOrder/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// =============================================================================
// COMMON WIDGETS
// =============================================================================
// Only the handful of widgets actually reused by more than one page live
// here (the white rounded card, the thin vertical divider, and the food-row
// used by both the Order Placed and Preparing order summaries). Everything
// page-specific stays inside that page's own file so sizes there never
// affect any other page.
// =============================================================================

Widget buildTrackCard({
  required Widget child,
  EdgeInsets? margin,
  EdgeInsets? padding,
}) {
  return Container(
    margin: margin,
    padding: padding,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18.r),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.045),
          blurRadius: 12.r,
          offset: Offset(0, 3.h),
        ),
      ],
    ),
    child: child,
  );
}

Widget buildTrackVerticalDivider() {
  return Container(
    width: 1,
    margin: EdgeInsets.symmetric(vertical: 10.h),
    color: Colors.grey.shade200,
  );
}

Widget buildTrackFoodRow({
  required String emoji,
  required String name,
  required String price,
  required String quantity,
}) {
  return SizedBox(
    height: 52.h,
    child: Row(
      children: [
        Container(
          width: 48.w,
          height: 42.w,
          decoration: BoxDecoration(
            color: const Color(0xFFFFF3F1),
            borderRadius: BorderRadius.circular(10.r),
          ),
          alignment: Alignment.center,
          child: Text(emoji, style: TextStyle(fontSize: 25.sp)),
        ),
        SizedBox(width: 10.w),
        Container(
          width: 20.w,
          height: 20.w,
          decoration: const BoxDecoration(
            color: kTrackRed,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Text(
            quantity,
            style: TextStyle(
              color: Colors.white,
              fontSize: 10.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: kTrackText,
              fontSize: 12.5.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          price,
          style: TextStyle(
            color: kTrackText,
            fontSize: 13.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}

Widget buildTrackSummaryDivider() {
  return Padding(
    padding: EdgeInsets.only(left: 58.w),
    child: Divider(height: 1, thickness: 0.7, color: Colors.grey.shade200),
  );
}
