import 'package:deleivery_app/order/orderstore.dart';
import 'package:deleivery_app/order/viewOrderDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// =============================================================================
// COLORS
// =============================================================================

const Color kOrderRed = Color(0xFFD33220);
const Color kOrderRedDark = Color(0xFFBF2B1C);

const Color kOrderBackground = Color(0xFFF8F8F8);
const Color kOrderText = Color(0xFF202124);
const Color kOrderGrey = Color(0xFF777777);

// =============================================================================
// ORDERS SCREEN
// =============================================================================
// Orders now come from OrderStore.instance (see orderStore.dart) instead of
// a hardcoded list. It's a ValueNotifier, so ValueListenableBuilder below
// rebuilds this screen automatically the moment an order is added anywhere
// in the app (e.g. from your checkout flow calling OrderStore.instance.
// addOrder(...)) — no manual refresh needed, and it's empty until a real
// order actually exists.
// =============================================================================

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen>
    with SingleTickerProviderStateMixin {
  int _selectedTab = 0;

  final List<String> _tabs = const [
    'All Orders',
    'Ongoing',
    'Completed',
    'Canceled',
  ];

  @override
  void initState() {
    super.initState();
    OrderStore.instance.load();
  }

  // ===========================================================================
  // BUILD
  // ===========================================================================

  @override
  Widget build(BuildContext context) {
    // Header height, how much the tabs card overlaps up into it, and the
    // tabs card's own height — used to size the combined Stack below so
    // the sliver reserves exactly the right amount of scroll space.
    final double headerHeight = 150.h;
    final double overlap = 28.h;
    final double tabsHeight = 76.h;

    return Scaffold(
      backgroundColor: kOrderBackground,
      body: ValueListenableBuilder<List<OrderData>>(
        valueListenable: OrderStore.instance.orders,
        builder: (context, allOrders, _) {
          return CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              // =============================================================
              // RED HEADER + TABS CARD
              // Built with Stack/Positioned instead of Transform.translate.
              // Transform combined with setState inside a sliver list can
              // trip a Flutter framework assertion
              // (_debugRelayoutBoundaryAlreadyMarkedNeedsLayout) on some
              // devices — Positioned achieves the same overlap through
              // normal layout instead of a paint-time transform, so it
              // can't hit that bug.
              // =============================================================
              SliverToBoxAdapter(
                child: SizedBox(
                  height: headerHeight - overlap + tabsHeight,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: _buildHeader(context),
                      ),
                      Positioned(
                        top: headerHeight - overlap,
                        left: 0.w,
                        right: 0.w,
                        child: _buildTabs(),
                      ),
                    ],
                  ),
                ),
              ),

              // =============================================================
              // CONTENT
              // =============================================================
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(top: 6.h),
                  child: _buildOrderContent(allOrders),
                ),
              ),

              SliverToBoxAdapter(child: SizedBox(height: 110.h)),
            ],
          );
        },
      ),
    );
  }

  // ===========================================================================
  // HEADER
  // ===========================================================================

  Widget _buildHeader(BuildContext context) {
    return ConstrainedBox(
      // Minimum, not exact — if "My Orders" + the icon ever need a touch
      // more vertical room on some device's text scale/width, the header
      // grows to fit instead of forcing an overflow inside a fixed box.
      constraints: BoxConstraints(minHeight: 150.h),
      child: Container(
        width: double.infinity,
        color: kOrderRed,
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.w, 14.h, 16.w, 14.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'My Orders',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w800,
                    height: 1.1,
                  ),
                ),
              ),
              GestureDetector(
                onTap: _showFilterSheet,
                behavior: HitTestBehavior.opaque,
                child: Icon(
                  Icons.tune_rounded,
                  color: Colors.white,
                  size: 24.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ===========================================================================
  // TABS
  // ===========================================================================

  Widget _buildTabs() {
    return Container(
      height: 76.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 12.r,
            offset: Offset(0, 3.h),
          ),
        ],
      ),
      child: Row(
        children: List.generate(_tabs.length, (index) {
          final bool selected = _selectedTab == index;

          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedTab = index;
                });
              },
              behavior: HitTestBehavior.opaque,
              child: SizedBox(
                height: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.h),
                      child: Text(
                        _tabs[index],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: selected ? kOrderRed : Colors.grey.shade500,
                          fontSize: 13.5.sp,
                          fontWeight: selected
                              ? FontWeight.w800
                              : FontWeight.w500,
                        ),
                      ),
                    ),
                    if (selected)
                      Positioned(
                        bottom: 0,
                        left: 8.w,
                        right: 8.w,
                        child: Container(
                          height: 2.5.h,
                          decoration: BoxDecoration(
                            color: kOrderRed,
                            borderRadius: BorderRadius.circular(3.r),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  // ===========================================================================
  // ORDER CONTENT — filters the live orders list per tab, shows empty
  // state automatically if the filtered result is empty.
  // ===========================================================================

  Widget _buildOrderContent(List<OrderData> allOrders) {
    List<OrderData> filtered;

    switch (_selectedTab) {
      case 1:
        filtered = allOrders.where((o) => o.status == 'ongoing').toList();
        break;
      case 2:
        filtered = allOrders.where((o) => o.status == 'completed').toList();
        break;
      case 3:
        filtered = allOrders.where((o) => o.status == 'canceled').toList();
        break;
      default:
        filtered = allOrders;
    }

    if (filtered.isEmpty) {
      return const _EmptyOrdersView();
    }

    return Column(
      children: [
        SizedBox(height: 12.h),
        ...filtered.map(
          (order) => _OrderCard(
            restaurantName: order.restaurantName,
            orderNumber: order.orderNumber,
            status: order.statusLabel,
            statusColor: order.statusColor,
            image: order.image,
            items: order.items,
            amount: order.amount,
            date: order.date,
            showTrackButton: order.showTrackButton,
          ),
        ),
      ],
    );
  }

  // ===========================================================================
  // FILTER SHEET
  // ===========================================================================

  void _showFilterSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      ),
      builder: (context) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.w, 18.h, 20.w, 20.h),
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
                  'Filter Orders',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                    color: kOrderText,
                  ),
                ),

                SizedBox(height: 18.h),

                _FilterOption(
                  icon: Icons.calendar_today_rounded,
                  title: 'Newest first',
                  onTap: () => Navigator.pop(context),
                ),

                _FilterOption(
                  icon: Icons.history_rounded,
                  title: 'Oldest first',
                  onTap: () => Navigator.pop(context),
                ),

                _FilterOption(
                  icon: Icons.currency_rupee_rounded,
                  title: 'Highest amount',
                  onTap: () => Navigator.pop(context),
                ),

                _FilterOption(
                  icon: Icons.payments_rounded,
                  title: 'Lowest amount',
                  onTap: () => Navigator.pop(context),
                ),

                SizedBox(height: 8.h),
              ],
            ),
          ),
        );
      },
    );
  }
}

// =============================================================================
// EMPTY ORDERS VIEW — "No orders yet" (matches the reference design:
// hearts + receipt card + bike, exactly like the screenshot you shared)
// =============================================================================

class _EmptyOrdersView extends StatelessWidget {
  const _EmptyOrdersView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 20.h),
      child: Column(
        children: [
          SizedBox(height: 12.h),

          // -----------------------------------------------------------------
          // ILLUSTRATION — receipt card + hearts + bike.png, composed the
          // same way as the reference image. If bike.png fails to load
          // (missing from pubspec.yaml, wrong path/case, or the app wasn't
          // fully restarted after adding it), errorBuilder falls back to a
          // plain red delivery icon and logs the real reason to console.
          // -----------------------------------------------------------------
          SizedBox(
            height: 210.h,
            width: double.infinity,
            child: Center(
              child: SizedBox(
                width: 220.w,
                height: 180.h,
                child: Image.asset(
                  'assets/bike.png',
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    debugPrint('bike.png failed to load: $error');
                    return Container(
                      width: 220.w,
                      height: 180.h,
                      decoration: BoxDecoration(
                        color: kOrderRed,
                        borderRadius: BorderRadius.circular(24.r),
                      ),
                      child: Icon(
                        Icons.delivery_dining_rounded,
                        color: Colors.white,
                        size: 70.sp,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),

          Text(
            'No orders yet',
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w800,
              color: kOrderText,
            ),
          ),

          SizedBox(height: 10.h),

          Text(
            'Your delicious orders will appear here. Explore great restaurants and tasty dishes near you!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.sp, color: kOrderGrey, height: 1.4),
          ),

          SizedBox(height: 28.h),

          SizedBox(
            width: double.infinity,
            height: 52.h,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kOrderRed,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Start ordering',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                    size: 18.sp,
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}

// =============================================================================
// ORDER CARD
// =============================================================================

class _OrderCard extends StatelessWidget {
  final String restaurantName;
  final String orderNumber;
  final String status;
  final Color statusColor;
  final String image;
  final String items;
  final String amount;
  final String date;
  final bool showTrackButton;

  const _OrderCard({
    required this.restaurantName,
    required this.orderNumber,
    required this.status,
    required this.statusColor,
    required this.image,
    required this.items,
    required this.amount,
    required this.date,
    required this.showTrackButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16.w, 0, 16.w, 14.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.055),
            blurRadius: 12.r,
            offset: Offset(0, 3.h),
          ),
        ],
      ),
      child: Column(
        children: [
          // =================================================================
          // TOP ROW
          // =================================================================
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // -------------------------------------------------------------
              // RESTAURANT IMAGE
              // -------------------------------------------------------------
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  image,
                  width: 72.w,
                  height: 72.w,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 72.w,
                      height: 72.w,
                      color: Colors.grey.shade100,
                      child: Icon(
                        Icons.restaurant_rounded,
                        color: Colors.grey.shade400,
                        size: 30.sp,
                      ),
                    );
                  },
                ),
              ),

              SizedBox(width: 12.w),

              // -------------------------------------------------------------
              // DETAILS
              // -------------------------------------------------------------
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurantName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: kOrderText,
                        fontSize: 15.5.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    SizedBox(height: 4.h),

                    Text(
                      orderNumber,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 11.5.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    SizedBox(height: 7.h),

                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: statusColor.withOpacity(0.10),
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Text(
                        status,
                        style: TextStyle(
                          color: statusColor,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // -------------------------------------------------------------
              // AMOUNT
              // -------------------------------------------------------------
              Text(
                amount,
                style: TextStyle(
                  color: kOrderText,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),

          SizedBox(height: 12.h),

          Divider(height: 1, thickness: 0.8, color: Colors.grey.shade200),

          SizedBox(height: 10.h),

          // =================================================================
          // ITEMS + DATE
          // =================================================================
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.receipt_long_rounded,
                size: 16.sp,
                color: Colors.grey.shade500,
              ),

              SizedBox(width: 7.w),

              Expanded(
                child: Text(
                  items,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 11.5.sp,
                    height: 1.3,
                  ),
                ),
              ),

              SizedBox(width: 8.w),

              Text(
                date,
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 10.5.sp,
                ),
              ),
            ],
          ),

          // =================================================================
          // TRACK BUTTON
          // =================================================================
          if (showTrackButton) ...[
            SizedBox(height: 12.h),

            SizedBox(
              width: double.infinity,
              height: 42.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const OrderDetailsScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: kOrderRed,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Text(
                  'Track Order',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ] else ...[
            SizedBox(height: 10.h),

            SizedBox(
              width: double.infinity,
              height: 40.h,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => OrderDetailsScreen(),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: kOrderRed,
                  side: BorderSide(
                    color: kOrderRed.withOpacity(0.35),
                    width: 1,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11.r),
                  ),
                ),
                child: Text(
                  'View Order',
                  style: TextStyle(
                    fontSize: 12.5.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

// =============================================================================
// FILTER OPTION
// =============================================================================

class _FilterOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _FilterOption({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Row(
          children: [
            Container(
              width: 40.w,
              height: 40.w,
              decoration: BoxDecoration(
                color: const Color(0xFFFDE9E7),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Icon(icon, color: kOrderRed, size: 20.sp),
            ),

            SizedBox(width: 12.w),

            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: kOrderText,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            Icon(
              Icons.chevron_right_rounded,
              color: Colors.grey.shade400,
              size: 22.sp,
            ),
          ],
        ),
      ),
    );
  }
}
