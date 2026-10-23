import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color kBrandRed = Color(0xFFD92D20);
const Color kBrandRedLight = Color(0xFFE63325);
const Color kBrandRedDark = Color(0xFFB42318);

// =============================================================================
// ORDER MODEL
// =============================================================================

class OrderModel {
  final String id;
  final String restaurantName;
  final String status;
  final DateTime date;

  const OrderModel({
    required this.id,
    required this.restaurantName,
    required this.status,
    required this.date,
  });
}

// =============================================================================
// ORDERS SCREEN
// =============================================================================

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  List<OrderModel> _orders = [];

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadOrders();
  }

  // ===========================================================================
  // LOAD ORDERS
  // ===========================================================================

  Future<void> _loadOrders() async {
    setState(() {
      _isLoading = true;
    });

    // -------------------------------------------------------------------------
    // Replace this with your API / Firebase / database later.
    // -------------------------------------------------------------------------
    await Future.delayed(const Duration(milliseconds: 300));

    final List<OrderModel> fetchedOrders = [];

    if (!mounted) return;

    setState(() {
      _orders = fetchedOrders;
      _isLoading = false;
    });
  }

  // ===========================================================================
  // BUILD
  // ===========================================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),

      body: SafeArea(
        top: false,
        bottom: false,

        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),

          slivers: [
            // =================================================================
            // HEADER
            // =================================================================
            SliverToBoxAdapter(child: _OrdersHeader()),

            // =================================================================
            // LOADING
            // =================================================================
            if (_isLoading)
              SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: SizedBox(
                    width: 28.w,
                    height: 28.w,
                    child: const CircularProgressIndicator(
                      strokeWidth: 3,
                      color: kBrandRed,
                    ),
                  ),
                ),
              )
            // =================================================================
            // EMPTY
            // =================================================================
            else if (_orders.isEmpty)
              SliverFillRemaining(
                hasScrollBody: false,
                child: _EmptyOrdersView(
                  onStartOrdering: () {
                    Navigator.pop(context);
                  },
                ),
              )
            // =================================================================
            // ORDERS
            // =================================================================
            else
              SliverPadding(
                padding: EdgeInsets.only(top: 14.h, bottom: 30.h),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final order = _orders[index];

                    return _OrderTile(order: order);
                  }, childCount: _orders.length),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// ORDERS HEADER
// =============================================================================

class _OrdersHeader extends StatelessWidget {
  const _OrdersHeader();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.sizeOf(context).width;

    // Prevents the text becoming excessively large on tablets.
    final double titleSize = screenWidth < 360
        ? 25.sp
        : screenWidth > 600
        ? 30.sp
        : 28.sp;

    final double subtitleSize = screenWidth < 360 ? 13.sp : 14.sp;

    return Container(
      width: double.infinity,

      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [kBrandRedLight, kBrandRed, kBrandRedDark],
        ),

        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.r),
          bottomRight: Radius.circular(30.r),
        ),
      ),

      child: Stack(
        children: [
          // ===================================================================
          // DECORATIVE BACKGROUND
          // ===================================================================
          Positioned(
            right: -25.w,
            top: 20.h,
            child: Opacity(
              opacity: 0.10,
              child: Icon(
                Icons.delivery_dining_rounded,
                color: Colors.white,
                size: 150.sp,
              ),
            ),
          ),

          Positioned(
            right: 25.w,
            top: 22.h,
            child: Container(
              width: 8.w,
              height: 8.w,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),

          Positioned(
            right: 70.w,
            top: 62.h,
            child: Container(
              width: 5.w,
              height: 5.w,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),

          // ===================================================================
          // HEADER CONTENT
          // ===================================================================
          Padding(
            padding: EdgeInsets.only(
              left: 22.w,
              right: 22.w,
              top: MediaQuery.paddingOf(context).top + 20.h,
              bottom: 25.h,
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                // =============================================================
                // TITLE
                // =============================================================
                Text(
                  'Your Orders',

                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: titleSize,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.5,
                    height: 1.1,
                  ),
                ),

                SizedBox(height: 7.h),

                // =============================================================
                // SUBTITLE
                // =============================================================
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: screenWidth * 0.70),

                  child: Text(
                    'Track, reorder and relive your favourite meals',

                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,

                    style: TextStyle(
                      color: Colors.white.withOpacity(0.94),
                      fontSize: subtitleSize,
                      fontWeight: FontWeight.w500,
                      height: 1.35,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// =============================================================================
// EMPTY ORDERS VIEW
// =============================================================================

class _EmptyOrdersView extends StatelessWidget {
  final VoidCallback onStartOrdering;

  const _EmptyOrdersView({required this.onStartOrdering});

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.sizeOf(context);

    final bool isSmallPhone = screen.height < 700;
    final bool isVerySmallPhone = screen.height < 620;

    final double horizontalPadding = screen.width < 360
        ? 18.w
        : screen.width > 600
        ? 80.w
        : 24.w;

    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),

          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),

            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  // ===========================================================
                  // TOP SPACE
                  // ===========================================================
                  SizedBox(
                    height: isVerySmallPhone
                        ? 12.h
                        : isSmallPhone
                        ? 20.h
                        : 30.h,
                  ),

                  // ===========================================================
                  // BIKE IMAGE
                  // ===========================================================
                  _BikeImage(small: isSmallPhone),

                  // ===========================================================
                  // GAP
                  // ===========================================================
                  SizedBox(
                    height: isVerySmallPhone
                        ? 8.h
                        : isSmallPhone
                        ? 14.h
                        : 20.h,
                  ),

                  // ===========================================================
                  // TITLE
                  // ===========================================================
                  Text(
                    'No orders yet',

                    textAlign: TextAlign.center,

                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,

                    style: TextStyle(
                      color: const Color(0xFF101828),

                      fontSize: screen.width < 360 ? 22.sp : 24.sp,

                      fontWeight: FontWeight.w800,

                      height: 1.15,

                      letterSpacing: -0.3,
                    ),
                  ),

                  // ===========================================================
                  // GAP
                  // ===========================================================
                  SizedBox(height: 9.h),

                  // ===========================================================
                  // DESCRIPTION
                  // ===========================================================
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: screen.width > 600 ? 500.w : 370.w,
                    ),

                    child: Text(
                      'Your delicious orders will appear here. '
                      'Explore great restaurants and tasty dishes near you!',

                      textAlign: TextAlign.center,

                      style: TextStyle(
                        color: const Color(0xFF667085),

                        fontSize: screen.width < 360 ? 13.sp : 14.sp,

                        fontWeight: FontWeight.w500,

                        height: 1.45,
                      ),
                    ),
                  ),

                  // ===========================================================
                  // GAP
                  // ===========================================================
                  SizedBox(
                    height: isVerySmallPhone
                        ? 16.h
                        : isSmallPhone
                        ? 22.h
                        : 28.h,
                  ),

                  // ===========================================================
                  // START ORDERING BUTTON
                  // ===========================================================
                  _StartOrderingButton(onPressed: onStartOrdering),

                  // ===========================================================
                  // BOTTOM SPACE
                  // ===========================================================
                  SizedBox(height: isSmallPhone ? 16.h : 25.h),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

// =============================================================================
// BIKE IMAGE
// =============================================================================

class _BikeImage extends StatelessWidget {
  final bool small;

  const _BikeImage({required this.small});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.sizeOf(context).width;

    // ==============================================================
    // Responsive image sizing
    // ==============================================================

    final double imageWidth = screenWidth < 330
        ? screenWidth * 0.78
        : screenWidth > 600
        ? 390.w
        : screenWidth * 0.86;

    final double imageHeight = small ? 190.h : 235.h;

    return SizedBox(
      width: double.infinity,
      height: imageHeight,

      child: Center(
        child: Image.asset(
          'assets/bike.png',

          width: imageWidth,
          height: imageHeight,

          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

// =============================================================================
// START ORDERING BUTTON
// =============================================================================

class _StartOrderingButton extends StatelessWidget {
  final VoidCallback onPressed;

  const _StartOrderingButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.sizeOf(context).width;

    final double buttonHeight = screenWidth < 360 ? 50.h : 54.h;

    return SizedBox(
      width: double.infinity,
      height: buttonHeight,

      child: ElevatedButton(
        onPressed: onPressed,

        style: ElevatedButton.styleFrom(
          backgroundColor: kBrandRed,

          foregroundColor: Colors.white,

          elevation: 0,

          padding: EdgeInsets.symmetric(horizontal: 18.w),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.r),
          ),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Flexible(
              child: Text(
                'Start ordering',

                maxLines: 1,
                overflow: TextOverflow.ellipsis,

                style: TextStyle(
                  color: Colors.white,

                  fontSize: screenWidth < 360 ? 15.sp : 16.sp,

                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            SizedBox(width: 8.w),

            Icon(
              Icons.arrow_forward_rounded,
              color: Colors.white,
              size: screenWidth < 360 ? 19.sp : 20.sp,
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// ORDER TILE
// =============================================================================

class _OrderTile extends StatelessWidget {
  final OrderModel order;

  const _OrderTile({required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),

      padding: EdgeInsets.all(14.w),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(16.r),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.055),
            blurRadius: 10.r,
            offset: Offset(0, 3.h),
          ),
        ],
      ),

      child: Row(
        children: [
          // ================================================================
          // ICON
          // ================================================================
          Container(
            width: 46.w,
            height: 46.w,

            decoration: BoxDecoration(
              color: kBrandRed.withOpacity(0.10),

              borderRadius: BorderRadius.circular(13.r),
            ),

            child: Icon(
              Icons.receipt_long_rounded,
              color: kBrandRed,
              size: 23.sp,
            ),
          ),

          SizedBox(width: 12.w),

          // ================================================================
          // DETAILS
          // ================================================================
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  order.restaurantName,

                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,

                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w700,
                    fontSize: 15.sp,
                  ),
                ),

                SizedBox(height: 4.h),

                Text(
                  order.status,

                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,

                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(width: 8.w),

          Icon(
            Icons.chevron_right_rounded,
            color: Colors.grey.shade400,
            size: 23.sp,
          ),
        ],
      ),
    );
  }
}
