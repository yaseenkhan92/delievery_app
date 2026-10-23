import 'package:deleivery_app/screens/trackingOrder/color.dart';
import 'package:deleivery_app/screens/trackingOrder/commonwidget.dart';

import 'package:deleivery_app/screens/trackingOrder/livemap_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// =============================================================================
// ON THE WAY PAGE
// =============================================================================
// All sizing here (heights, widths, font sizes, spacing) is local to THIS
// page only. Changing a number in this file will never affect Order Placed,
// Preparing, or Handed to Rider — those live in their own files.
//
// The map is now a real Google Map (see live_map_card.dart).
// =============================================================================

class OnTheWayPage extends StatelessWidget {
  const OnTheWayPage({
    super.key,
    required this.onShowHelp,
    required this.onShowOrderDetails,
    required this.onChangeAddress,
  });

  final VoidCallback onShowHelp;
  final VoidCallback onShowOrderDetails;
  final VoidCallback onChangeAddress;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      children: [
        SizedBox(height: 1.h),
        // CHANGED: real Google Map instead of the painted fake map.
        // Pass real coordinates here when you have them from your backend:
        // LiveMapCard(
        //   restaurantPosition: LatLng(..., ...),
        //   homePosition: LatLng(..., ...),
        //   riderPosition: LatLng(..., ...),
        // )
        const LiveMapCard(),
        SizedBox(height: 10.h),
        _buildOnTheWayRiderRow(),
        SizedBox(height: 12.h),
        _buildOnTheWayOrderCard(),
        SizedBox(height: 12.h),
        _buildArrivingSoonBanner(),
        SizedBox(height: 14.h),
        _buildShareTrackingButton(context),
        SizedBox(height: 125.h),
      ],
    );
  }

  // ===========================================================================
  // RIDER ROW: avatar, ETA, distance, call, chat
  // ===========================================================================

  Widget _buildOnTheWayRiderRow() {
    return buildTrackCard(
      margin: EdgeInsets.only(left: 5.w, right: 5.w),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 42.w,
                  height: 42.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFFCE9E7),
                  ),
                  child: Icon(
                    Icons.sports_motorsports_rounded,
                    color: kTrackRed,
                    size: 10.sp,
                  ),
                ),
                Positioned(
                  right: 1.w,
                  bottom: 1.h,
                  child: Container(
                    width: 13.w,
                    height: 13.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green.shade500,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ali',
                    style: TextStyle(
                      color: kTrackText,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: Colors.amber.shade600,
                        size: 15.sp,
                      ),
                      SizedBox(width: 2.w),
                      Text(
                        '4.9',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 11.5.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            buildTrackVerticalDivider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_rounded,
                        color: kTrackRed,
                        size: 12.sp,
                      ),
                      SizedBox(width: 3.w),
                      Text(
                        'ETA',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    '2 min',
                    style: TextStyle(
                      color: kTrackRed,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    '(Approx.)',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 9.sp,
                    ),
                  ),
                ],
              ),
            ),
            buildTrackVerticalDivider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: kTrackRed,
                        size: 12.sp,
                      ),
                      SizedBox(width: 3.w),
                      Text(
                        'Distance',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    '0.8 km',
                    style: TextStyle(
                      color: kTrackText,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'from you',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 9.sp,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 4.w),
            _buildRoundIconButton(Icons.call_rounded),
            SizedBox(width: 8.w),
            _buildRoundIconButton(Icons.chat_bubble_rounded),
          ],
        ),
      ),
    );
  }

  Widget _buildRoundIconButton(IconData icon) {
    return GestureDetector(
      onTap: onShowHelp,
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: 40.w,
        height: 40.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xFFFCE9E7),
        ),
        child: Icon(icon, color: kTrackRed, size: 18.sp),
      ),
    );
  }

  // ===========================================================================
  // ORDER SUMMARY + DELIVERING-TO CARD
  // ===========================================================================

  Widget _buildOnTheWayOrderCard() {
    return buildTrackCard(
      margin: EdgeInsets.fromLTRB(14.w, 0, 14.w, 0),
      padding: EdgeInsets.all(14.w),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Your Order',
                          style: TextStyle(
                            color: kTrackText,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: onShowOrderDetails,
                        behavior: HitTestBehavior.opaque,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'View Details',
                              style: TextStyle(
                                color: kTrackRed,
                                fontSize: 10.5.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: kTrackRed,
                              size: 15.sp,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      _buildThumbBadge('🍔'),
                      SizedBox(width: 8.w),
                      _buildThumbBadge('🍟'),
                      SizedBox(width: 8.w),
                      _buildThumbBadge('🥤'),
                    ],
                  ),
                  // SizedBox(height: 10.h),
                  // Text(
                  //   '3 items',
                  //   style: TextStyle(
                  //     color: Colors.grey.shade600,
                  //     fontSize: 11.sp,
                  //   ),
                  // ),
                  // SizedBox(height: 2.h),
                  // Text(
                  //   'Total \$10.47',
                  //   style: TextStyle(
                  //     color: kTrackText,
                  //     fontSize: 13.sp,
                  //     fontWeight: FontWeight.w800,
                  //   ),
                  // ),
                ],
              ),
            ),
            buildTrackVerticalDivider(),
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivering to',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 11.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: onChangeAddress,
                      behavior: HitTestBehavior.opaque,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.home_rounded,
                            color: kTrackRed,
                            size: 18.sp,
                          ),
                          SizedBox(width: 6.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Home',
                                  style: TextStyle(
                                    color: kTrackText,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(height: 2.h),
                                Text(
                                  '123 Maple Street,\nSan Francisco, CA 94107',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 10.5.sp,
                                    height: 1.3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.chevron_right_rounded,
                            color: Colors.grey.shade400,
                            size: 18.sp,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildThumbBadge(String emoji) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 46.w,
          height: 42.w,
          decoration: BoxDecoration(
            color: const Color(0xFFFFF3F1),
            borderRadius: BorderRadius.circular(10.r),
          ),
          alignment: Alignment.center,
          child: Text(emoji, style: TextStyle(fontSize: 22.sp)),
        ),
        Positioned(
          top: -6.h,
          right: -6.w,
          child: Container(
            width: 18.w,
            height: 18.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kTrackRed,
              border: Border.all(color: Colors.white, width: 1.5),
            ),
            alignment: Alignment.center,
            child: Text(
              '1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 9.sp,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ===========================================================================
  // "RIDER IS ARRIVING SOON!" BANNER
  // ===========================================================================

  Widget _buildArrivingSoonBanner() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.w),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color(0xFFFCE3DF), const Color(0xFFFCEFEC)],
        ),
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.auto_awesome, color: kTrackRed, size: 15.sp),
                    SizedBox(width: 5.w),
                    Flexible(
                      child: Text(
                        'Rider is arriving soon!',
                        style: TextStyle(
                          color: kTrackRed,
                          fontSize: 14.5.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Text(
                  'Please be ready to collect your order.',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 11.5.sp,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10.w),
          Container(
            width: 52.w,
            height: 52.w,
            decoration: BoxDecoration(shape: BoxShape.circle, color: kTrackRed),
            child: Icon(
              Icons.shopping_bag_rounded,
              color: Colors.white,
              size: 26.sp,
            ),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // SHARE LIVE TRACKING BUTTON
  // ===========================================================================

  Widget _buildShareTrackingButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: SizedBox(
        height: 52.h,
        child: OutlinedButton.icon(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Live tracking link copied to share.'),
                behavior: SnackBarBehavior.floating,
                backgroundColor: kTrackRed,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
            );
          },
          icon: Icon(Icons.ios_share_rounded, color: kTrackRed, size: 18.sp),
          label: Text(
            'Share Live Tracking',
            style: TextStyle(
              color: kTrackRed,
              fontSize: 13.5.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white,
            side: BorderSide(color: kTrackRed.withOpacity(0.4)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28.r),
            ),
          ),
        ),
      ),
    );
  }
}
