import 'package:deleivery_app/screens/trackingOrder/color.dart';
import 'package:deleivery_app/screens/trackingOrder/commonwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// =============================================================================
// PREPARING PAGE
// =============================================================================
// All sizing here (heights, widths, font sizes, spacing) is local to THIS
// page only. Changing a number in this file will never affect Order Placed,
// Handed to Rider, or On the Way — those live in their own files.
// =============================================================================

class PreparingPage extends StatelessWidget {
  const PreparingPage({
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
        SizedBox(height: 10.h),
        _buildPreparingHeroImage(),
        SizedBox(height: 10.h),
        _buildPreparingRestaurantCard(),
        _buildInfoStrip(
          icon: Icons.soup_kitchen_rounded,
          title: 'Live kitchen status',
          subtitle: 'Our chef is cooking your order with fresh ingredients.',
        ),
        _buildSpecialInstructionsStrip(),
        _buildPreparingOrderSummary(),
        _buildDeliveryAddressCompactStrip(),
        SizedBox(height: 16.h),
        _buildSupportButtonsRow(),
        SizedBox(height: 18.h),
        Center(
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.auto_awesome, color: kTrackRed, size: 16.sp),
                  SizedBox(width: 6.w),
                  Text(
                    'Freshly cooking your meal',
                    style: TextStyle(
                      color: kTrackText,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(width: 6.w),
                  Icon(Icons.auto_awesome, color: kTrackRed, size: 16.sp),
                ],
              ),
              SizedBox(height: 4.h),
              Text(
                'Great food takes a little time. Thanks for your patience!',
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

  // Add 'assets/preparing.png' to your pubspec.yaml assets list.
  Widget _buildPreparingHeroImage() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6.w),
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
              'assets/preparing.png',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => _imageFallback(
                icon: Icons.soup_kitchen_rounded,
                label: 'preparing.png',
              ),
            ),
          ),
          Positioned(left: 12.w, top: 12.h, child: _buildCookingNowChip()),
          Positioned(
            right: 8.w,
            bottom: 127.h,
            child: _buildOrderAcceptedChip(),
          ),
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
          colors: [kTrackRed.withOpacity(0.9), kTrackRed3],
        ),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white.withOpacity(0.85), size: 60.sp),
          SizedBox(height: 8.h),
          Text(
            'assets/$label not found',
            style: TextStyle(
              color: Colors.white.withOpacity(0.9),
              fontSize: 11.sp,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCookingNowChip() {
    return Container(
      constraints: BoxConstraints(maxWidth: 90.w),
      padding: EdgeInsets.all(3.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.12), blurRadius: 10.r),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.local_fire_department_rounded,
            color: kTrackRed,
            size: 15.sp,
          ),
          SizedBox(width: 3.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cooking now',
                  style: TextStyle(
                    color: kTrackRed,
                    fontSize: 8.5.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 1.h),
                Text(
                  'Your meal is being prepared fresh',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 5.5.sp,
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

  Widget _buildOrderAcceptedChip() {
    return Container(
      constraints: BoxConstraints(maxWidth: 100.w),
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.12), blurRadius: 10.r),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order accepted',
            style: TextStyle(
              color: kTrackText,
              fontSize: 7.5.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 1.h),
          Row(
            children: [
              Icon(Icons.access_time_rounded, color: kTrackRed, size: 13.sp),
              SizedBox(width: 4.w),
              Text(
                '9:32 AM',
                style: TextStyle(
                  color: kTrackRed,
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(height: 1.h),
          Text(
            "We've received your order and the kitchen is preparing it with care.",
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 7.sp,
              height: 1.0,
            ),
            maxLines: 3,
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // RESTAURANT CARD
  // ===========================================================================

  Widget _buildPreparingRestaurantCard() {
    return buildTrackCard(
      margin: EdgeInsets.fromLTRB(14.w, 0, 14.w, 12.h),
      padding: EdgeInsets.all(8.w),
      child: Row(
        children: [
          Container(
            width: 40.w,
            height: 40.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: kTrackRed,
            ),
            child: Icon(
              Icons.restaurant_rounded,
              color: Colors.white,
              size: 20.sp,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Burger House',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: kTrackText,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 6.h),
                Row(
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: Colors.amber.shade600,
                      size: 19.sp,
                    ),
                    SizedBox(width: 3.w),
                    Text(
                      '4.9',
                      style: TextStyle(
                        color: kTrackText,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Text(
                        '•',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '30–40 min',
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 11.5.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 6.w),
          Container(
            constraints: BoxConstraints(maxWidth: 118.w),
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: const Color(0xFFFCE9E7),
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Prep ETA',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 7.5.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 1.h),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.access_time_rounded,
                      color: kTrackRed,
                      size: 17.sp,
                    ),
                    SizedBox(width: 4.w),
                    Flexible(
                      child: Text(
                        '12 min',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: kTrackRed,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Text(
                      '(Approx.)',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // LIVE KITCHEN STATUS STRIP
  // ===========================================================================

  Widget _buildInfoStrip({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      margin: EdgeInsets.fromLTRB(14.w, 0, 14.w, 12.h),
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: const Color(0xFFFCE9E7),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: kTrackRed, size: 20.sp),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: kTrackRed,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 11.5.sp,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // SPECIAL INSTRUCTIONS
  // ===========================================================================

  Widget _buildSpecialInstructionsStrip() {
    return Container(
      margin: EdgeInsets.fromLTRB(14.w, 0, 14.w, 12.h),
      padding: EdgeInsets.all(13.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.045), blurRadius: 12.r),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.description_outlined, color: kTrackRed, size: 20.sp),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Special instructions',
                  style: TextStyle(
                    color: kTrackRed,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  'No onions, extra cheese',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 11.5.sp,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Acknowledged',
                  style: TextStyle(
                    color: Colors.green.shade700,
                    fontSize: 10.5.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 3.w),
                Icon(
                  Icons.check_rounded,
                  color: Colors.green.shade700,
                  size: 13.sp,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // ORDER SUMMARY
  // ===========================================================================

  Widget _buildPreparingOrderSummary() {
    return buildTrackCard(
      margin: EdgeInsets.fromLTRB(14.w, 0, 14.w, 12.h),
      padding: EdgeInsets.fromLTRB(14.w, 13.h, 14.w, 12.h),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Order',
                      style: TextStyle(
                        color: kTrackText,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      '2 items',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 11.sp,
                      ),
                    ),
                  ],
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
                        fontSize: 11.5.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 3.w),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: kTrackRed,
                      size: 18.sp,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          buildTrackFoodRow(
            emoji: '🍔',
            name: 'Classic Burger',
            price: '\$6.99',
            quantity: '1',
          ),
          buildTrackSummaryDivider(),
          buildTrackFoodRow(
            emoji: '🍟',
            name: 'French Fries',
            price: '\$2.49',
            quantity: '1',
          ),
          SizedBox(height: 8.h),
          Divider(height: 1, thickness: 1, color: Colors.grey.shade200),
          SizedBox(height: 10.h),
          Row(
            children: [
              Text(
                'Total',
                style: TextStyle(
                  color: kTrackText,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Spacer(),
              Text(
                '\$9.48',
                style: TextStyle(
                  color: kTrackRed,
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // DELIVERY ADDRESS COMPACT STRIP
  // ===========================================================================

  Widget _buildDeliveryAddressCompactStrip() {
    return Container(
      margin: EdgeInsets.fromLTRB(14.w, 0, 14.w, 0),
      padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 13.h),
      decoration: BoxDecoration(
        color: const Color(0xFFFCE9E7),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: GestureDetector(
        onTap: onChangeAddress,
        behavior: HitTestBehavior.opaque,
        child: Row(
          children: [
            Icon(Icons.location_on_rounded, color: kTrackRed, size: 20.sp),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivering to',
                    style: TextStyle(
                      color: kTrackRed,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    '123 Maple Street, Springfield, IL 62704',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 11.5.sp,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_right_rounded, color: kTrackRed, size: 20.sp),
          ],
        ),
      ),
    );
  }

  // ===========================================================================
  // CALL / CHAT SUPPORT BUTTONS
  // ===========================================================================

  Widget _buildSupportButtonsRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Row(
        children: [
          Expanded(child: _supportButton(Icons.call_rounded, 'Call Support')),
          SizedBox(width: 12.w),
          Expanded(
            child: _supportButton(Icons.chat_bubble_rounded, 'Chat Support'),
          ),
        ],
      ),
    );
  }

  Widget _supportButton(IconData icon, String label) {
    return OutlinedButton.icon(
      onPressed: onShowHelp,
      icon: CircleAvatar(
        radius: 12.r,
        backgroundColor: kTrackRed,
        child: Icon(icon, color: Colors.white, size: 13.sp),
      ),
      label: Text(
        label,
        style: TextStyle(
          color: kTrackText,
          fontSize: 12.5.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        side: BorderSide(color: Colors.grey.shade200),
        padding: EdgeInsets.symmetric(vertical: 12.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.r),
        ),
      ),
    );
  }
}
