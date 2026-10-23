import 'package:deleivery_app/screens/trackingOrder/color.dart';
import 'package:deleivery_app/screens/trackingOrder/commonwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// =============================================================================
// HANDED TO RIDER PAGE
// =============================================================================
// All sizing here (heights, widths, font sizes, spacing) is local to THIS
// page only. Changing a number in this file will never affect Order Placed,
// Preparing, or On the Way — those live in their own files.
// =============================================================================

class HandedToRiderPage extends StatelessWidget {
  const HandedToRiderPage({
    super.key,
    required this.onShowHelp,
    required this.onShowOrderDetails,
  });

  final VoidCallback onShowHelp;
  final VoidCallback onShowOrderDetails;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      children: [
        SizedBox(height: 10.h),
        _buildRiderHeroImage(),
        SizedBox(height: 14.h),
        _buildRiderInfoCard(),
        SizedBox(height: 12.h),
        _buildRiderActionsRow(),
        SizedBox(height: 12.h),
        _buildDistanceStrip(),
        SizedBox(height: 12.h),
        _buildDeliveryNoteStrip(),
        SizedBox(height: 20.h),
        Center(
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.auto_awesome, color: kTrackRed, size: 16.sp),
                  SizedBox(width: 6.w),
                  Flexible(
                    child: Text(
                      'Your rider has picked up your order!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kTrackText,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SizedBox(width: 6.w),
                  Icon(Icons.auto_awesome, color: kTrackRed, size: 16.sp),
                ],
              ),
              SizedBox(height: 6.h),
              Text(
                'Ali is on the way with your delicious food.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 11.5.sp,
                ),
              ),
              Text(
                'Get excited, your meal is almost there!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 11.5.sp,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 125.h),
      ],
    );
  }

  // ===========================================================================
  // HERO IMAGE with floating chips
  // ===========================================================================

  // Add 'assets/handtorider.png' to your pubspec.yaml assets list.
  Widget _buildRiderHeroImage() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.w),
      height: 200.h,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 14.r),
        ],
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/handtorider.png',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => _imageFallback(
                icon: Icons.sports_motorsports_rounded,
                label: 'handtorider.png',
              ),
            ),
          ),
          Positioned(left: 12.w, top: 50.h, child: _buildLiveTrackingChip()),
          Positioned(right: 4.w, top: 100.h, child: _buildPickedUpAtChip()),
        ],
      ),
    );
  }

  Widget _imageFallback({required IconData icon, required String label}) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [kTrackRed.withOpacity(0.12), Colors.white],
        ),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: kTrackRed.withOpacity(0.5), size: 60.sp),
          SizedBox(height: 8.h),
          Text(
            'assets/$label not found',
            style: TextStyle(color: Colors.grey.shade500, fontSize: 11.sp),
          ),
        ],
      ),
    );
  }

  // ---- Live Tracking chip ("Ali is on the way!") ----
  Widget _buildLiveTrackingChip() {
    return Container(
      constraints: BoxConstraints(maxWidth: 120.w),
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10.r),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 10.w,
            height: 20.w,
            decoration: BoxDecoration(
              color: const Color(0xFFFCE9E7),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Icon(Icons.podcasts_rounded, color: kTrackRed, size: 16.sp),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Live Tracking',
                  style: TextStyle(
                    color: kTrackRed,
                    fontSize: 12.5.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  'Ali is on the way!',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 10.5.sp,
                  ),
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ---- Picked up at chip ----
  Widget _buildPickedUpAtChip() {
    return Container(
      constraints: BoxConstraints(maxWidth: 120.w),
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.12), blurRadius: 10.r),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.access_time_rounded, color: kTrackRed, size: 16.sp),
              SizedBox(width: 6.w),
              Expanded(
                child: Text(
                  'Picked up at',
                  style: TextStyle(
                    color: kTrackText,
                    fontSize: 12.5.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          Center(
            child: Text(
              '12:35 PM',
              style: TextStyle(
                color: kTrackText,
                fontSize: 10.sp,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // RIDER INFO CARD: Ali, rating, ETA, restaurant + item
  // ===========================================================================

  Widget _buildRiderInfoCard() {
    return buildTrackCard(
      margin: EdgeInsets.fromLTRB(14.w, 0, 14.w, 0),
      padding: EdgeInsets.all(14.w),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Rider avatar + name + rating
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 40.w,
                        height: 40.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xFFFCE9E7),
                        ),
                        child: Icon(
                          Icons.sports_motorsports_rounded,
                          color: kTrackRed,
                          size: 15.sp,
                        ),
                      ),
                      Positioned(
                        right: 1.w,
                        bottom: 1.h,
                        child: Container(
                          width: 12.w,
                          height: 12.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green.shade500,
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ali',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: kTrackText,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(height: 3.h),
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
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            buildTrackVerticalDivider(),
            // ETA
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled_rounded,
                          color: kTrackRed,
                          size: 8.sp,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          'ETA',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 10.5.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      '18 min',
                      style: TextStyle(
                        color: kTrackRed,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            buildTrackVerticalDivider(),
            // Restaurant + item
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.restaurant_rounded,
                          color: kTrackRed,
                          size: 14.sp,
                        ),
                        SizedBox(width: 4.w),
                        Expanded(
                          child: Text(
                            'Burger House',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: kTrackText,
                              fontSize: 12.5.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 4.h),
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
                            size: 14.sp,
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

  // ===========================================================================
  // CALL / CHAT / PAYMENT SECURED / DELIVERY CODE
  // ===========================================================================

  Widget _buildRiderActionsRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCircleActionButton(Icons.call_rounded, 'Call'),
          SizedBox(width: 10.w),
          _buildCircleActionButton(Icons.chat_bubble_rounded, 'Chat'),
          SizedBox(width: 10.w),
          Expanded(child: _buildPaymentSecuredCard()),
          SizedBox(width: 10.w),
          Expanded(child: _buildDeliveryCodeCard()),
        ],
      ),
    );
  }

  Widget _buildCircleActionButton(IconData icon, String label) {
    return GestureDetector(
      onTap: onShowHelp,
      behavior: HitTestBehavior.opaque,
      child: Column(
        children: [
          Container(
            width: 40.w,
            height: 40.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kTrackRed,
              boxShadow: [
                BoxShadow(
                  color: kTrackRed.withOpacity(0.25),
                  blurRadius: 10.r,
                  offset: Offset(0, 4.h),
                ),
              ],
            ),
            child: Icon(icon, color: Colors.white, size: 13.sp),
          ),
          SizedBox(height: 6.h),
          Text(
            label,
            style: TextStyle(
              color: kTrackText,
              fontSize: 10.5.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentSecuredCard() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.verified_rounded,
            color: Colors.green.shade600,
            size: 14.sp,
          ),
          SizedBox(height: 6.h),
          Text(
            'Payment Secured',
            style: TextStyle(
              color: Colors.green.shade800,
              fontSize: 10.5.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDeliveryCodeCard() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF3D9),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.lock_rounded,
                color: Colors.amber.shade800,
                size: 16.sp,
              ),
              SizedBox(width: 4.w),
              Expanded(
                child: Text(
                  'Delivery Code',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.amber.shade900,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Text(
            '4821',
            style: TextStyle(
              color: Colors.amber.shade900,
              fontSize: 10.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            'Share this code at delivery',
            style: TextStyle(
              color: Colors.amber.shade800,
              fontSize: 6.5.sp,
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // DISTANCE STRIP
  // ===========================================================================

  Widget _buildDistanceStrip() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.045), blurRadius: 12.r),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1.2 km away',
                    style: TextStyle(
                      color: kTrackText,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'from you',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 10.5.sp,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Arriving in',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 10.5.sp,
                    ),
                  ),
                  Text(
                    '18 min',
                    style: TextStyle(
                      color: kTrackRed,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // DELIVERY NOTE STRIP
  // ===========================================================================

  Widget _buildDeliveryNoteStrip() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.w),
      padding: EdgeInsets.all(13.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.045), blurRadius: 12.r),
        ],
      ),
      child: GestureDetector(
        onTap: onShowOrderDetails,
        behavior: HitTestBehavior.opaque,
        child: Row(
          children: [
            Container(
              width: 38.w,
              height: 38.w,
              decoration: BoxDecoration(
                color: const Color(0xFFFCE9E7),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Icon(
                Icons.description_outlined,
                color: kTrackRed,
                size: 18.sp,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivery Note',
                    style: TextStyle(
                      color: kTrackRed,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    'Meet at gate',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 11.5.sp,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: Colors.grey.shade400,
              size: 20.sp,
            ),
          ],
        ),
      ),
    );
  }
}
