import 'package:deleivery_app/screens/trackingOrder/color.dart';
import 'package:deleivery_app/screens/trackingOrder/commonwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// =============================================================================
// ORDER PLACED PAGE
// =============================================================================
//
// RESPONSIVE SYSTEM
// -----------------------------------------------------------------------------
// width  -> .w
// height -> .h
// font   -> .sp
// radius -> .r
//
// IMPORTANT:
// All visual dimensions below use ScreenUtil.
// Do NOT replace .w / .h / .sp / .r with raw numbers.
//
// MAIN HEIGHT CONTROLS
// -----------------------------------------------------------------------------
// heroHeight        = total height of the text + illustration area
// imageHeight       = available height for orderplace.png
// imageScale        = makes the illustration visually larger/smaller
// imageTop          = moves the illustration upward/downward
// infoCardHeight    = controlled naturally by its contents
//
// If you want the illustration larger:
//     imageScale: 1.15
//     imageScale: 1.20
//     imageScale: 1.25
//
// If you want the whole hero taller:
//     heroHeight: 235.h
//     heroHeight: 250.h
//     heroHeight: 270.h
//
// If you want the image higher:
//     imageTop: -8.h
//     imageTop: -15.h
//
// Do NOT use negative margins.
// =============================================================================

class OrderPlacedPage extends StatelessWidget {
  const OrderPlacedPage({
    super.key,
    required this.onShowOrderDetails,
    required this.onChangeAddress,
  });

  final VoidCallback onShowOrderDetails;
  final VoidCallback onChangeAddress;

  // ===========================================================================
  // MAIN BUILD
  // ===========================================================================

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      children: [
        // =====================================================================
        // HERO SECTION
        // =====================================================================
        _buildOrderPlacedSection(),

        // =====================================================================
        // ORDER INFORMATION
        // =====================================================================
        _buildOrderInfoCard(),

        // =====================================================================
        // RESTAURANT
        // =====================================================================
        _buildRestaurantCard(),

        // =====================================================================
        // DELIVERY ADDRESS
        // =====================================================================
        _buildDeliveryAddressCard(),

        // =====================================================================
        // ORDER SUMMARY
        // =====================================================================
        _buildOrderSummary(),

        // =====================================================================
        // BOTTOM SPACE
        // =====================================================================
        SizedBox(height: 125.h),
      ],
    );
  }

  // ===========================================================================
  // HERO SECTION
  // ===========================================================================
  //
  // THIS IS THE FIRST PLACE TO ADJUST THE HERO HEIGHT.
  //
  // Current:
  //     235.h
  //
  // Smaller:
  //     220.h
  //
  // Larger:
  //     250.h
  //     265.h
  //     280.h
  //
  // The height is responsive because it uses .h.
  // ===========================================================================

  Widget _buildOrderPlacedSection() {
    const double heroHeightValue = 205;

    return SizedBox(
      width: double.infinity,
      height: heroHeightValue.h,
      child: Padding(
        padding: EdgeInsets.fromLTRB(5.w, 0.h, 10.w, 0.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // =================================================================
            // LEFT SIDE
            // =================================================================
            Expanded(
              flex: 47,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10.w,
                  right: 3.w,
                  top: 0.h,
                  bottom: 20.h,
                ),
                child: _buildOrderPlacedText(),
              ),
            ),

            // =================================================================
            // RIGHT SIDE
            // =================================================================
            Expanded(flex: 53, child: _buildOrderPlacedImage()),
          ],
        ),
      ),
    );
  }

  // ===========================================================================
  // HERO TEXT
  // ===========================================================================

  Widget _buildOrderPlacedText() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // =====================================================================
        // TITLE
        // =====================================================================
        Text(
          'Your order has\nbeen placed! 🎉',
          maxLines: 3,
          softWrap: true,
          overflow: TextOverflow.visible,
          style: TextStyle(
            color: kTrackText,
            fontSize: 17.sp,
            fontWeight: FontWeight.w800,
            height: 1.12,
            letterSpacing: -0.2.sp,
          ),
        ),

        SizedBox(height: 13.h),

        // =====================================================================
        // DESCRIPTION
        // =====================================================================
        Flexible(
          child: Text(
            'The restaurant has received'
            ' your order and will start '
            'preparing it shortly.',
            maxLines: 4,
            softWrap: true,
            overflow: TextOverflow.visible,
            style: TextStyle(
              color: kTrackGrey,
              fontSize: 11.5.sp,
              fontWeight: FontWeight.w400,
              height: 1.48,
            ),
          ),
        ),
      ],
    );
  }

  // ===========================================================================
  // ORDER PLACED IMAGE
  // ===========================================================================
  //
  // THESE ARE THE MAIN IMAGE CONTROLS.
  //
  // imageHeight:
  //     Controls the available image height.
  //
  // imageScale:
  //     Controls how large the actual image looks.
  //
  // imageTop:
  //     Moves image upward/downward.
  //
  // For your reference screenshot:
  //     imageHeight = 250.h
  //     imageScale  = 1.18
  //     imageTop    = -5.h
  //
  // ===========================================================================

  Widget _buildOrderPlacedImage() {
    const double imageHeightValue = 270;
    const double imageScaleValue = 1.18;
    const double imageTopValue = -20;

    return SizedBox(
      width: double.infinity,
      height: imageHeightValue.h,
      child: ClipRect(
        child: Transform.translate(
          offset: Offset(0.w, imageTopValue.h),
          child: Transform.scale(
            scale: imageScaleValue,
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/orderplaced.png',
              width: double.infinity,
              height: imageHeightValue.h,
              fit: BoxFit.contain,
              alignment: Alignment.topCenter,
              errorBuilder:
                  (BuildContext context, Object error, StackTrace? stackTrace) {
                    return _imageFallback();
                  },
            ),
          ),
        ),
      ),
    );
  }

  // ===========================================================================
  // IMAGE FALLBACK
  // ===========================================================================

  Widget _imageFallback() {
    return Container(
      width: double.infinity,
      height: 210.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [kTrackRed.withOpacity(0.12), kTrackRed.withOpacity(0.04)],
        ),
        borderRadius: BorderRadius.circular(18.r),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.shopping_bag_rounded,
            color: kTrackRed.withOpacity(0.55),
            size: 44.sp,
          ),

          SizedBox(height: 6.h),

          Text(
            'assets/orderplace.png',
            style: TextStyle(color: Colors.grey.shade500, fontSize: 10.sp),
          ),

          SizedBox(height: 2.h),

          Text(
            'not found — check pubspec.yaml',
            style: TextStyle(color: Colors.grey.shade400, fontSize: 9.sp),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // ORDER INFORMATION CARD
  // ===========================================================================

  Widget _buildOrderInfoCard() {
    return buildTrackCard(
      margin: EdgeInsets.fromLTRB(10.w, 0.h, 10.w, 12.h),
      child: IntrinsicHeight(
        child: Row(
          children: [
            // =================================================================
            // ORDER ID
            // =================================================================
            Expanded(
              child: _buildInfoColumn(
                title: 'Order ID',
                value: '#GB1245789',
                valueColor: kTrackRed,
                trailing: Icon(
                  Icons.copy_rounded,
                  size: 17.sp,
                  color: Colors.grey.shade500,
                ),
              ),
            ),

            buildTrackVerticalDivider(),

            // =================================================================
            // PLACED AT
            // =================================================================
            Expanded(
              child: _buildInfoColumn(
                title: 'Placed at',
                value: 'Today, 9:41 AM',
              ),
            ),

            buildTrackVerticalDivider(),

            // =================================================================
            // PAYMENT
            // =================================================================
            Expanded(
              child: _buildInfoColumn(
                title: 'Payment',
                value: 'Paid Online',
                valueColor: Colors.green.shade600,
                icon: Icons.verified_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ===========================================================================
  // INFORMATION COLUMN
  // ===========================================================================

  Widget _buildInfoColumn({
    required String title,
    required String value,
    Color? valueColor,
    Widget? trailing,
    IconData? icon,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 13.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ===================================================================
          // TITLE
          // ===================================================================
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 10.5.sp,
              fontWeight: FontWeight.w500,
            ),
          ),

          SizedBox(height: 5.h),

          // ===================================================================
          // VALUE
          // ===================================================================
          Row(
            children: [
              if (icon != null) ...[
                Icon(icon, color: valueColor ?? Colors.green, size: 16.sp),
                SizedBox(width: 3.w),
              ],

              Flexible(
                child: Text(
                  value,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: valueColor ?? kTrackText,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              if (trailing != null) ...[SizedBox(width: 4.w), trailing],
            ],
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // RESTAURANT CARD
  // ===========================================================================

  Widget _buildRestaurantCard() {
    return buildTrackCard(
      margin: EdgeInsets.fromLTRB(10.w, 0.h, 10.w, 12.h),
      padding: EdgeInsets.all(12.w),
      child: Row(
        children: [
          // =================================================================
          // RESTAURANT ICON
          // =================================================================
          Container(
            width: 50.w,
            height: 50.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: kTrackRed,
            ),
            child: Icon(
              Icons.restaurant_rounded,
              color: Colors.white,
              size: 25.sp,
            ),
          ),

          SizedBox(width: 11.w),

          // =================================================================
          // RESTAURANT INFORMATION
          // =================================================================
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
                    fontSize: 14.5.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),

                SizedBox(height: 5.h),

                Row(
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: Colors.amber.shade600,
                      size: 18.sp,
                    ),

                    SizedBox(width: 3.w),

                    Text(
                      '4.8',
                      style: TextStyle(
                        color: kTrackText,
                        fontSize: 11.5.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Text(
                        '•',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),

                    Flexible(
                      child: Text(
                        '30–40 min',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
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

          SizedBox(width: 7.w),

          // =================================================================
          // PREPARATION TIME
          // =================================================================
          Container(
            constraints: BoxConstraints(maxWidth: 122.w),
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: const Color(0xFFFCE9E7),
              borderRadius: BorderRadius.circular(13.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Est. Preparation',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 8.5.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                SizedBox(height: 3.h),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.access_time_rounded,
                      color: kTrackRed,
                      size: 16.sp,
                    ),

                    SizedBox(width: 3.w),

                    Flexible(
                      child: Text(
                        '15–20 min',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: kTrackRed,
                          fontSize: 9.5.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 1.h),

                Text(
                  '(Approx.)',
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 9.sp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // DELIVERY ADDRESS CARD
  // ===========================================================================

  Widget _buildDeliveryAddressCard() {
    return buildTrackCard(
      margin: EdgeInsets.fromLTRB(10.w, 0.h, 10.w, 12.h),
      padding: EdgeInsets.all(12.w),
      child: Row(
        children: [
          // =================================================================
          // LOCATION ICON
          // =================================================================
          Container(
            width: 50.w,
            height: 50.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFFCE9E7),
            ),
            child: Icon(
              Icons.location_on_rounded,
              color: kTrackRed,
              size: 25.sp,
            ),
          ),

          SizedBox(width: 11.w),

          // =================================================================
          // ADDRESS
          // =================================================================
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivering to',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 10.sp,
                  ),
                ),

                SizedBox(height: 3.h),

                Text(
                  'Home',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: kTrackText,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),

                SizedBox(height: 1.h),

                Text(
                  '123 Maple Street, Springfield,\n'
                  'IL 62701, USA',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 10.5.sp,
                    height: 1.2,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(width: 6.w),

          // =================================================================
          // CHANGE BUTTON
          // =================================================================
          OutlinedButton.icon(
            onPressed: onChangeAddress,
            icon: Icon(Icons.edit_rounded, size: 14.sp),
            label: Text(
              'Change',
              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w700),
            ),
            style: OutlinedButton.styleFrom(
              foregroundColor: kTrackRed,
              side: BorderSide(color: Colors.grey.shade200),
              padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 7.h),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // ORDER SUMMARY
  // ===========================================================================

  Widget _buildOrderSummary() {
    return buildTrackCard(
      margin: EdgeInsets.fromLTRB(10.w, 0.h, 10.w, 12.h),
      padding: EdgeInsets.fromLTRB(14.w, 13.h, 14.w, 12.h),
      child: Column(
        children: [
          // ===================================================================
          // HEADER
          // ===================================================================
          Row(
            children: [
              Expanded(
                child: Text(
                  'Order Summary',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: kTrackText,
                    fontSize: 16.sp,
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
                        fontSize: 11.5.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    SizedBox(width: 3.w),

                    Icon(
                      Icons.chevron_right_rounded,
                      color: kTrackRed,
                      size: 18.sp,
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 10.h),

          // ===================================================================
          // BURGER
          // ===================================================================
          buildTrackFoodRow(
            emoji: '🍔',
            name: 'Classic Burger',
            price: '\$6.99',
            quantity: '1',
          ),

          buildTrackSummaryDivider(),

          // ===================================================================
          // FRIES
          // ===================================================================
          buildTrackFoodRow(
            emoji: '🍟',
            name: 'French Fries',
            price: '\$2.49',
            quantity: '1',
          ),

          buildTrackSummaryDivider(),

          // ===================================================================
          // COKE
          // ===================================================================
          buildTrackFoodRow(
            emoji: '🥤',
            name: 'Coke',
            price: '\$1.49',
            quantity: '1',
          ),

          SizedBox(height: 8.h),

          Divider(height: 1.h, thickness: 1, color: Colors.grey.shade200),

          SizedBox(height: 10.h),

          // ===================================================================
          // TOTAL
          // ===================================================================
          Row(
            children: [
              Text(
                'Total Paid',
                style: TextStyle(
                  color: kTrackText,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),

              const Spacer(),

              Text(
                '\$10.97',
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
}
