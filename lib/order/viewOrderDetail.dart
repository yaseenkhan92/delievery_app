import 'package:deleivery_app/screens/trackingOrder/trackorderscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'orderscreen.dart' show kOrderRed, kOrderBackground, kOrderText;

// =============================================================================
// DATA
// =============================================================================

enum _StepState { done, current, pending }

class _TimelineStep {
  final String title;
  final String time;
  final _StepState state;
  final IconData? icon;

  const _TimelineStep({
    required this.title,
    required this.time,
    required this.state,
    this.icon,
  });
}

class _OrderItem {
  final int qty;
  final String name;
  final String price;

  const _OrderItem({
    required this.qty,
    required this.name,
    required this.price,
  });
}

// =============================================================================
// ORDER DETAILS SCREEN
// =============================================================================

class OrderDetailsScreen extends StatelessWidget {
  final String orderId;
  final String orderPlaced;
  final String restaurantName;
  final String restaurantImage;
  final String rating;
  final List<_OrderItem> items;
  final String itemTotal;
  final String deliveryFee;
  final String platformFee;
  final String totalAmount;
  final String deliveringToLabel;
  final String deliveringToAddress;
  final String riderDistance;
  final List<_TimelineStep> timeline;

  const OrderDetailsScreen({
    super.key,
    this.orderId = '#SG12345678',
    this.orderPlaced = '12 May, 2024 · 12:30 PM',
    this.restaurantName = 'Burger House',
    this.restaurantImage = 'assets/burgers.png',
    this.rating = '4.8',
    this.items = const [
      _OrderItem(qty: 1, name: 'Classic Burger', price: '\$7.49'),
      _OrderItem(qty: 1, name: 'French Fries', price: '\$2.49'),
      _OrderItem(qty: 1, name: 'Coke', price: '\$1.49'),
    ],
    this.itemTotal = '\$11.47',
    this.deliveryFee = '\$2.00',
    this.platformFee = '\$1.00',
    this.totalAmount = '\$14.47',
    this.deliveringToLabel = 'Home',
    this.deliveringToAddress = '123 Park Street, San Francisco, CA 94107',
    this.riderDistance = '2.3 km away from you',
    this.timeline = const [
      _TimelineStep(
        title: 'Order Placed',
        time: '12 May, 2024 · 12:30 PM',
        state: _StepState.done,
      ),
      _TimelineStep(
        title: 'Restaurant Confirmed',
        time: '12 May, 2024 · 12:31 PM',
        state: _StepState.done,
      ),
      _TimelineStep(
        title: 'Preparing Your Order',
        time: '12 May, 2024 · 12:35 PM',
        state: _StepState.done,
      ),
      _TimelineStep(
        title: 'On the Way',
        time: '12 May, 2024 · 12:50 PM',
        state: _StepState.current,
        icon: Icons.delivery_dining_rounded,
      ),
      _TimelineStep(
        title: 'Delivered',
        time: 'Estimated · 01:00 PM',
        state: _StepState.pending,
      ),
    ],
  });

  // ===========================================================================
  // OPEN TRACK ORDER
  // ===========================================================================

  void _openTrackOrder(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (_) => TrackorderScreen()));
  }

  // ===========================================================================
  // BUILD
  // ===========================================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOrderBackground,
      body: Column(
        children: [
          const _DetailsHeader(),

          Expanded(
            child: SafeArea(
              top: false,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.fromLTRB(16.w, 14.h, 16.w, 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _InfoCard(
                      riderDistance: riderDistance,
                      deliveringToLabel: deliveringToLabel,
                      deliveringToAddress: deliveringToAddress,
                      orderId: orderId,
                      orderPlaced: orderPlaced,
                      onTrackOrder: () => _openTrackOrder(context),
                    ),

                    SizedBox(height: 14.h),

                    _RestaurantCard(
                      restaurantName: restaurantName,
                      restaurantImage: restaurantImage,
                      rating: rating,
                      items: items,
                      itemTotal: itemTotal,
                      deliveryFee: deliveryFee,
                      platformFee: platformFee,
                      totalAmount: totalAmount,
                    ),

                    SizedBox(height: 14.h),

                    _OrderStatusCard(timeline: timeline),

                    SizedBox(height: 20.h),

                    const _NeedHelpRow(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// =============================================================================
// HEADER
// =============================================================================

class _DetailsHeader extends StatelessWidget {
  const _DetailsHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kOrderRed,
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.fromLTRB(8.w, 8.h, 12.w, 18.h),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  if (Navigator.of(context).canPop()) {
                    Navigator.of(context).pop();
                  }
                },
                behavior: HitTestBehavior.opaque,
                child: Padding(
                  padding: EdgeInsets.all(8.w),
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                    size: 24.sp,
                  ),
                ),
              ),

              Expanded(
                child: Text(
                  'Order Details',
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {},
                behavior: HitTestBehavior.opaque,
                child: Container(
                  width: 34.w,
                  height: 34.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white.withOpacity(0.7),
                      width: 1.2,
                    ),
                  ),
                  child: Icon(
                    Icons.question_mark_rounded,
                    color: Colors.white,
                    size: 15.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// =============================================================================
// CARD
// =============================================================================

class _Card extends StatelessWidget {
  final Widget child;

  const _Card({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: child,
    );
  }
}

Widget _thinDivider() {
  return Divider(height: 1, thickness: 1, color: Colors.grey.shade100);
}

// =============================================================================
// INFO CARD
// =============================================================================

class _InfoCard extends StatelessWidget {
  final String riderDistance;
  final String deliveringToLabel;
  final String deliveringToAddress;
  final String orderId;
  final String orderPlaced;
  final VoidCallback onTrackOrder;

  const _InfoCard({
    required this.riderDistance,
    required this.deliveringToLabel,
    required this.deliveringToAddress,
    required this.orderId,
    required this.orderPlaced,
    required this.onTrackOrder,
  });

  @override
  Widget build(BuildContext context) {
    return _Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(14.w),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: kOrderRed.withOpacity(0.06),
                borderRadius: BorderRadius.circular(14.r),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 3.h,
                          ),
                          decoration: BoxDecoration(
                            color: kOrderRed,
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.white,
                                size: 7.sp,
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                'LIVE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 8.h),

                        Text(
                          'Your order is on the way',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: kOrderText,
                          ),
                        ),

                        SizedBox(height: 3.h),

                        Text(
                          'Rider is $riderDistance',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11.5.sp,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 10.w),

                  GestureDetector(
                    onTap: onTrackOrder,
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 9.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24.r),
                        border: Border.all(color: kOrderRed.withOpacity(0.35)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.location_on_rounded,
                            color: kOrderRed,
                            size: 14.sp,
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            'Track Order',
                            style: TextStyle(
                              color: kOrderRed,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          _thinDivider(),

          Padding(
            padding: EdgeInsets.all(14.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey.shade500,
                  size: 20.sp,
                ),

                SizedBox(width: 10.w),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivering to',
                        style: TextStyle(
                          fontSize: 11.5.sp,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      SizedBox(height: 3.h),
                      Text(
                        deliveringToLabel,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: kOrderText,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        deliveringToAddress,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 11.5.sp,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 8.w),

                Text(
                  'Change',
                  style: TextStyle(
                    fontSize: 12.5.sp,
                    fontWeight: FontWeight.w700,
                    color: kOrderRed,
                  ),
                ),
              ],
            ),
          ),

          _thinDivider(),

          Padding(
            padding: EdgeInsets.all(14.w),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order ID',
                        style: TextStyle(
                          fontSize: 11.5.sp,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      SizedBox(height: 3.h),
                      Text(
                        orderId,
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          color: kOrderText,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 12.w),

                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Order Placed',
                        style: TextStyle(
                          fontSize: 11.5.sp,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      SizedBox(height: 3.h),
                      Text(
                        orderPlaced,
                        maxLines: 2,
                        textAlign: TextAlign.end,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12.5.sp,
                          fontWeight: FontWeight.w600,
                          color: kOrderText,
                        ),
                      ),
                    ],
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
// RESTAURANT CARD
// =============================================================================

class _RestaurantCard extends StatelessWidget {
  final String restaurantName;
  final String restaurantImage;
  final String rating;
  final List<_OrderItem> items;
  final String itemTotal;
  final String deliveryFee;
  final String platformFee;
  final String totalAmount;

  const _RestaurantCard({
    required this.restaurantName,
    required this.restaurantImage,
    required this.rating,
    required this.items,
    required this.itemTotal,
    required this.deliveryFee,
    required this.platformFee,
    required this.totalAmount,
  });

  @override
  Widget build(BuildContext context) {
    return _Card(
      child: Padding(
        padding: EdgeInsets.all(14.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.asset(
                    restaurantImage,
                    width: 44.w,
                    height: 44.w,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) {
                      return Container(
                        width: 44.w,
                        height: 44.w,
                        color: Colors.grey.shade100,
                        child: Icon(
                          Icons.restaurant_rounded,
                          color: Colors.grey.shade400,
                          size: 20.sp,
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(width: 10.w),

                Expanded(
                  child: Text(
                    restaurantName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w800,
                      color: kOrderText,
                    ),
                  ),
                ),

                Icon(Icons.star_rounded, color: kOrderRed, size: 15.sp),

                SizedBox(width: 2.w),

                Text(
                  rating,
                  style: TextStyle(
                    fontSize: 12.5.sp,
                    fontWeight: FontWeight.w700,
                    color: kOrderText,
                  ),
                ),
              ],
            ),

            SizedBox(height: 12.h),

            _thinDivider(),

            SizedBox(height: 10.h),

            ...items.map(
              (item) => Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: Row(
                  children: [
                    Container(
                      width: 22.w,
                      height: 22.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '${item.qty}',
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),

                    SizedBox(width: 10.w),

                    Expanded(
                      child: Text(
                        item.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 13.sp, color: kOrderText),
                      ),
                    ),

                    Text(
                      item.price,
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: kOrderText,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            _thinDivider(),

            SizedBox(height: 10.h),

            _CostRow(label: 'Item Total', value: itemTotal),

            SizedBox(height: 6.h),

            _CostRow(label: 'Delivery Fee', value: deliveryFee),

            SizedBox(height: 6.h),

            _CostRow(label: 'Platform Fee', value: platformFee),

            SizedBox(height: 10.h),

            _thinDivider(),

            SizedBox(height: 10.h),

            _CostRow(label: 'Total Amount', value: totalAmount, isTotal: true),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// COST ROW
// =============================================================================

class _CostRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isTotal;

  const _CostRow({
    required this.label,
    required this.value,
    this.isTotal = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: isTotal ? 14.sp : 12.5.sp,
            fontWeight: isTotal ? FontWeight.w800 : FontWeight.w500,
            color: isTotal ? kOrderText : Colors.grey.shade600,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: isTotal ? 15.sp : 12.5.sp,
            fontWeight: FontWeight.w800,
            color: isTotal ? kOrderRed : kOrderText,
          ),
        ),
      ],
    );
  }
}

// =============================================================================
// ORDER STATUS
// =============================================================================

class _OrderStatusCard extends StatelessWidget {
  final List<_TimelineStep> timeline;

  const _OrderStatusCard({required this.timeline});

  @override
  Widget build(BuildContext context) {
    return _Card(
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Status',
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w800,
                color: kOrderText,
              ),
            ),

            SizedBox(height: 14.h),

            ...List.generate(timeline.length, (index) {
              return _TimelineTile(
                step: timeline[index],
                isLast: index == timeline.length - 1,
              );
            }),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// TIMELINE TILE
// =============================================================================

class _TimelineTile extends StatelessWidget {
  final _TimelineStep step;
  final bool isLast;

  const _TimelineTile({required this.step, required this.isLast});

  @override
  Widget build(BuildContext context) {
    final bool done = step.state == _StepState.done;
    final bool current = step.state == _StepState.current;

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 26.w,
                height: 26.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: done || current ? kOrderRed : Colors.white,
                  shape: BoxShape.circle,
                  border: done || current
                      ? null
                      : Border.all(color: Colors.grey.shade300, width: 1.5),
                ),
                child: current && step.icon != null
                    ? Icon(step.icon, color: Colors.white, size: 14.sp)
                    : done
                    ? Icon(
                        Icons.check_rounded,
                        color: Colors.white,
                        size: 15.sp,
                      )
                    : null,
              ),

              if (!isLast)
                Expanded(
                  child: Container(
                    width: 2.w,
                    margin: EdgeInsets.symmetric(vertical: 2.h),
                    color: Colors.grey.shade200,
                  ),
                ),
            ],
          ),

          SizedBox(width: 12.w),

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: isLast ? 0 : 18.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          step.title,
                          style: TextStyle(
                            fontSize: 13.5.sp,
                            fontWeight: FontWeight.w700,
                            color: step.state == _StepState.pending
                                ? Colors.grey.shade500
                                : kOrderText,
                          ),
                        ),

                        SizedBox(height: 2.h),

                        Text(
                          step.time,
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                  ),

                  if (current)
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 3.h,
                      ),
                      decoration: BoxDecoration(
                        color: kOrderRed.withOpacity(0.10),
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Text(
                        'LIVE',
                        style: TextStyle(
                          color: kOrderRed,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.5,
                        ),
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
}

// =============================================================================
// NEED HELP
// =============================================================================

class _NeedHelpRow extends StatelessWidget {
  const _NeedHelpRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Need Help?',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w800,
                  color: kOrderText,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                "We're here to help you",
                style: TextStyle(fontSize: 12.sp, color: Colors.grey.shade600),
              ),
            ],
          ),
        ),

        _HelpAction(icon: Icons.chat_bubble_rounded, label: 'Chat'),

        SizedBox(width: 18.w),

        _HelpAction(icon: Icons.call_rounded, label: 'Call'),
      ],
    );
  }
}

// =============================================================================
// HELP ACTION
// =============================================================================

class _HelpAction extends StatelessWidget {
  final IconData icon;
  final String label;

  const _HelpAction({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 46.w,
            height: 46.w,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: kOrderRed,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white, size: 20.sp),
          ),

          SizedBox(height: 4.h),

          Text(
            label,
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}
