import 'dart:math' as math;
import 'dart:ui' show lerpDouble;

import 'package:deleivery_app/screens/trackingOrder/color.dart';
import 'package:deleivery_app/screens/trackingOrder/handedtorider.dart';
import 'package:deleivery_app/screens/trackingOrder/onthewaypage.dart';
import 'package:deleivery_app/screens/trackingOrder/orderplacedScreenintrack.dart';
import 'package:deleivery_app/screens/trackingOrder/preparingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// =============================================================================
// TRACK ORDER SCREEN
// =============================================================================
// This file now only owns what's shared across every step: the header, the
// tracking stepper, the PageView that swaps between steps, the bottom action
// bar, and the three shared bottom sheets/snackbars (help, order details,
// change address).
//
// Each step's actual content now lives in its own file/class, with its own
// independent sizing:
//   - order_placed_page.dart      -> OrderPlacedPage
//   - preparing_page.dart         -> PreparingPage
//   - handed_to_rider_page.dart   -> HandedToRiderPage
//   - on_the_way_page.dart        -> OnTheWayPage
//
// Changing a height/width/font-size inside any one of those files now only
// ever affects that one page — it can no longer accidentally change how the
// other three pages look.
//
// The header/tracking stepper above the PageView is a single shared widget,
// so on top of that, its sizing is now driven by PER-STEP arrays (see
// "PER-STEP HEADER SIZING" below) instead of one fixed number — that way
// tuning the header for one step can never overflow or leave a gap on
// another step.
//
// FIXED: the whole screen is now wrapped in a clamped textScaler (same
// pattern as login/checkout/order-success), and the tracking step content
// is wrapped in FittedBox(scaleDown) — together these are what stop the
// "overflowed by N pixels" errors on phones with larger system font sizes
// or slightly different screen heights, instead of chasing one more magic
// pixel number that only happens to work on one specific device.
// =============================================================================

class TrackorderScreen extends StatefulWidget {
  const TrackorderScreen({super.key});

  @override
  State<TrackorderScreen> createState() => _TrackorderScreenState();
}

class _TrackorderScreenState extends State<TrackorderScreen> {
  late final PageController _pageController = PageController();

  // Built ONCE, so swiping never re-constructs the four step pages.
  late final List<Widget> _pages = [
    RepaintBoundary(
      child: OrderPlacedPage(
        onShowOrderDetails: _showOrderDetails,
        onChangeAddress: _changeAddress,
      ),
    ),
    RepaintBoundary(
      child: PreparingPage(
        onShowHelp: _showHelp,
        onShowOrderDetails: _showOrderDetails,
        onChangeAddress: _changeAddress,
      ),
    ),
    RepaintBoundary(
      child: HandedToRiderPage(
        onShowHelp: _showHelp,
        onShowOrderDetails: _showOrderDetails,
      ),
    ),
    RepaintBoundary(
      child: OnTheWayPage(
        onShowHelp: _showHelp,
        onShowOrderDetails: _showOrderDetails,
        onChangeAddress: _changeAddress,
      ),
    ),
  ];

  // ===========================================================================
  // NAVIGATION HELPERS
  // ===========================================================================

  // Live scroll position of the PageView (e.g. 1.37 while swiping).
  double get _pagePos {
    if (_pageController.hasClients && _pageController.position.haveDimensions) {
      return _pageController.page ?? 0;
    }
    return 0;
  }

  int get _currentStep => _pagePos.round();

  // Smoothly blends the per-step values as the user drags.
  double _lerpStep(List<double> values) {
    final double p = _pagePos.clamp(0, values.length - 1).toDouble();
    final int i = p.floor();
    final int j = math.min(i + 1, values.length - 1);
    return lerpDouble(values[i], values[j], p - i)!;
  }

  void _goToStep(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 320),
      curve: Curves.easeOutCubic,
    );
  }

  // ===========================================================================
  // BUILD
  // ===========================================================================

  @override
  Widget build(BuildContext context) {
    // ⬇️ Same pattern as login/checkout/order-success screens — without
    // this, a large system font size can blow past every fixed-height
    // box below.
    final textScaler = MediaQuery.textScalerOf(
      context,
    ).clamp(minScaleFactor: 0.8, maxScaleFactor: 1.15);

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: textScaler),
      child: Scaffold(
        backgroundColor: kTrackBackground,
        body: Stack(
          children: [
            Column(
              children: [
                // ==============================================================
                // FIXED HEADER + TRACKING STEPPER (not swipeable)
                // ==============================================================
                RepaintBoundary(
                  child: AnimatedBuilder(
                    animation: _pageController,
                    builder: (_, __) => _buildHeaderAndTracking(),
                  ),
                ),

                // ==============================================================
                // SWIPEABLE STEP PAGES — each one its own class/file now
                // ==============================================================
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    physics: const PageScrollPhysics(
                      parent: ClampingScrollPhysics(),
                    ),
                    children: _pages,
                  ),
                ),
              ],
            ),

            // ================================================================
            // FIXED BOTTOM ACTIONS
            // ================================================================
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: _buildBottomActions(),
            ),
          ],
        ),
      ),
    );
  }

  // ===========================================================================
  // PER-STEP HEADER SIZING
  // ===========================================================================
  // One entry per step: [Order Placed, Preparing, Handed to Rider, On the Way].
  // Each screen now tunes its OWN numbers here — changing index 1 (Preparing)
  // can never overflow or shrink index 0 (Order Placed), 2, or 3, because the
  // header only ever reads the entry for whichever step is currently shown.
  //
  // boxHeight    -> total space reserved for header+tracking before the page
  //                 content starts. Must be >= cardTop + cardHeight for that step.
  // bannerHeight -> height of the red rounded banner behind the back/help buttons.
  // cardTop      -> how far down the white tracking card sits.
  // cardHeight   -> height of the white tracking card itself.
  //
  // FIXED: cardHeight bumped from 90 -> 100 for a bit more natural
  // breathing room; FittedBox in _buildTrackingStep is the real safety
  // net now regardless of the exact number, so this box can never overflow
  // even on a tight screen or a large text scale.
  // ===========================================================================
  static const List<double> _boxHeight = [240, 240, 240, 240];
  static const List<double> _bannerHeight = [210, 210, 210, 210];
  static const List<double> _cardTop = [145, 145, 145, 145];
  static const List<double> _cardHeight = [100, 100, 100, 100];

  // ===========================================================================
  // HEADER + TRACKING
  // ===========================================================================

  Widget _buildHeaderAndTracking() {
    return SizedBox(
      height: _lerpStep(_boxHeight).h,
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          // =================================================================
          // RED HEADER
          // =================================================================
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: _lerpStep(_bannerHeight).h,
            child: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [kTrackRed, kTrackRed2, kTrackRed3],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(42.r),
                  bottomRight: Radius.circular(42.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.w, 52.h, 18.w, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        _buildHeaderButton(
                          icon: Icons.arrow_back_rounded,
                          onTap: () {
                            if (Navigator.of(context).canPop()) {
                              Navigator.of(context).pop();
                            }
                          },
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'Track Order',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                        _buildHeaderButton(
                          icon: Icons.help_outline_rounded,
                          onTap: _showHelp,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // =================================================================
          // TRACKING CARD
          // =================================================================
          Positioned(
            left: 12.w,
            right: 12.w,
            top: _lerpStep(_cardTop).h,
            child: _buildTrackingCard(),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // HEADER BUTTON
  // ===========================================================================

  Widget _buildHeaderButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: 48.w,
        height: 48.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.13),
          border: Border.all(color: Colors.white.withOpacity(0.25), width: 1),
        ),
        child: Icon(icon, color: Colors.white, size: 25.sp),
      ),
    );
  }

  // ===========================================================================
  // TRACKING CARD
  // ===========================================================================

  Widget _buildTrackingCard() {
    final double cardHeight = _lerpStep(_cardHeight).h;
    return Container(
      height: cardHeight,
      padding: EdgeInsets.fromLTRB(8.w, 16.h, 8.w, 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.09),
            blurRadius: 15.r,
            offset: Offset(0, 6.h),
          ),
        ],
      ),
      child: SizedBox(
        height: cardHeight,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final double width = constraints.maxWidth;
            final double itemWidth = width / 4;

            return Stack(
              children: [
                // ==========================================================
                // BACKGROUND LINE
                // ==========================================================
                Positioned(
                  left: itemWidth * 0.5,
                  right: itemWidth * 0.5,
                  top: 20.h,
                  child: Container(height: 3.h, color: Colors.grey.shade300),
                ),

                // ==========================================================
                // ACTIVE LINE
                // ==========================================================
                Positioned(
                  left: itemWidth * 0.5,
                  top: 20.h,
                  width: itemWidth * _pagePos,
                  child: Container(height: 3.h, color: kTrackRed),
                ),

                // ==========================================================
                // STEPS
                // ==========================================================
                Row(
                  children: [
                    _buildTrackingStep(0, Icons.check_rounded, 'Order Placed'),
                    _buildTrackingStep(
                      1,
                      Icons.restaurant_rounded,
                      'Preparing',
                    ),
                    _buildTrackingStep(
                      2,
                      Icons.delivery_dining_rounded,
                      'Handed to Rider',
                    ),
                    _buildTrackingStep(3, Icons.flag_rounded, 'On the Way'),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  // ===========================================================================
  // TRACKING STEP
  // ===========================================================================
  // FIXED: wrapped in FittedBox(scaleDown) so this content can NEVER
  // overflow its allotted height — on a tight screen, a large text
  // scale, or a 2-line title wrap, the circle+gap+text scale down
  // together instead of one fixed piece pushing past the bottom.
  // ===========================================================================

  Widget _buildTrackingStep(int index, IconData icon, String title) {
    final double t = (1 - (_pagePos - index).abs()).clamp(0.0, 1.0);
    final bool active = index <= _currentStep;
    final bool current = index == _currentStep;

    return Expanded(
      child: GestureDetector(
        onTap: () => _goToStep(index),
        behavior: HitTestBehavior.opaque,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: (35 + 8 * t).w,
                height: (35 + 8 * t).w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: active ? kTrackRed : Colors.grey.shade100,
                  border: Border.all(
                    color: active ? kTrackRed : Colors.grey.shade300,
                    width: current ? 3 : 1,
                  ),
                  boxShadow: current
                      ? [
                          BoxShadow(
                            color: kTrackRed.withOpacity(0.18),
                            blurRadius: 8.r,
                            spreadRadius: 2.r,
                          ),
                        ]
                      : null,
                ),
                child: Icon(
                  icon,
                  color: active ? Colors.white : Colors.grey.shade500,
                  size: (22 + 7 * t).sp,
                ),
              ),
              SizedBox(height: 7.h),
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: active ? kTrackRed : kTrackText,
                  fontSize: 10.5.sp,
                  fontWeight: active ? FontWeight.w700 : FontWeight.w500,
                  height: 1.15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ===========================================================================
  // BOTTOM ACTIONS
  // ===========================================================================

  Widget _buildBottomActions() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(14.w, 10.h, 14.w, 10.h),
      decoration: BoxDecoration(
        color: kTrackBackground,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 15.r,
            offset: Offset(0, -3.h),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: SizedBox(
                height: 54.h,
                child: OutlinedButton.icon(
                  onPressed: _showHelp,
                  icon: Icon(
                    Icons.chat_bubble_outline_rounded,
                    color: kTrackRed,
                    size: 20.sp,
                  ),
                  label: Text(
                    'Need help?',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: kTrackText,
                      fontSize: 12.5.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.grey.shade200),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.r),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              flex: 6,
              child: SizedBox(
                height: 54.h,
                child: ElevatedButton(
                  onPressed: _showOrderDetails,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kTrackRed,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.r),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          'View Order Details',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Icon(Icons.arrow_forward_rounded, size: 21.sp),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ===========================================================================
  // HELP
  // ===========================================================================

  void _showHelp() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.r)),
      ),
      builder: (sheetContext) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 20.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 42.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                SizedBox(height: 20.h),
                Icon(
                  Icons.support_agent_rounded,
                  color: kTrackRed,
                  size: 42.sp,
                ),
                SizedBox(height: 10.h),
                Text(
                  'Need help?',
                  style: TextStyle(
                    color: kTrackText,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  'How can we help you with this order?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 13.sp,
                  ),
                ),
                SizedBox(height: 18.h),
                _helpOption(
                  sheetContext,
                  Icons.delivery_dining_rounded,
                  'Where is my order?',
                ),
                _helpOption(
                  sheetContext,
                  Icons.cancel_outlined,
                  'Cancel my order',
                ),
                _helpOption(
                  sheetContext,
                  Icons.report_problem_outlined,
                  'Report a problem',
                ),
                SizedBox(height: 5.h),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _helpOption(BuildContext sheetContext, IconData icon, String title) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 42.w,
        height: 42.w,
        decoration: BoxDecoration(
          color: const Color(0xFFFCE9E7),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Icon(icon, color: kTrackRed, size: 21.sp),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: kTrackText,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Icon(Icons.chevron_right_rounded, color: Colors.grey.shade400),
      onTap: () {
        Navigator.of(sheetContext).pop();
      },
    );
  }

  // ===========================================================================
  // CHANGE ADDRESS
  // ===========================================================================

  void _changeAddress() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Address selection will open here.'),
        behavior: SnackBarBehavior.floating,
        backgroundColor: kTrackRed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
    );
  }

  // ===========================================================================
  // ORDER DETAILS
  // ===========================================================================

  void _showOrderDetails() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.r)),
      ),
      builder: (sheetContext) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 20.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 42.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  'Order Details',
                  style: TextStyle(
                    color: kTrackText,
                    fontSize: 21.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 18.h),
                _detailRow('Subtotal', '\$10.97'),
                _detailRow('Delivery Fee', 'Free'),
                _detailRow('Taxes', 'Included'),
                Divider(height: 22.h, color: Colors.grey.shade200),
                _detailRow(
                  'Total Paid',
                  '\$10.97',
                  bold: true,
                  valueColor: kTrackRed,
                ),
                SizedBox(height: 8.h),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _detailRow(
    String title,
    String value, {
    bool bold = false,
    Color? valueColor,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.h),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 13.sp,
              fontWeight: bold ? FontWeight.w700 : FontWeight.w400,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: TextStyle(
              color: valueColor ?? kTrackText,
              fontSize: 13.sp,
              fontWeight: bold ? FontWeight.w800 : FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // DISPOSE
  // ===========================================================================

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
