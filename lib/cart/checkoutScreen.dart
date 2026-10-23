import 'package:deleivery_app/order/orderSucces.dart';
import 'package:deleivery_app/order/orderstore.dart';
import 'package:flutter/material.dart';

const Color kBrandRed = Color(0xFFC1291C);
const Color kBrandRedLight = Color(0xFFE0362A);
const Color kBrandRedDark = Color(0xFF8E1C12);

// =============================================================================
// CHECKOUT ITEM DATA
// =============================================================================

class CheckoutItemData {
  final String image;
  final String name;
  final String variant;
  final int price;
  final int quantity;

  const CheckoutItemData({
    required this.image,
    required this.name,
    required this.variant,
    required this.price,
    required this.quantity,
  });
}

// =============================================================================
// CHECKOUT SCREEN
// =============================================================================

class CheckoutScreen extends StatelessWidget {
  final List<CheckoutItemData> items;
  final int deliveryFee;
  final int packagingFee;
  final int discount;

  const CheckoutScreen({
    super.key,
    required this.items,
    this.deliveryFee = 70,
    this.packagingFee = 10,
    this.discount = 80,
  });

  int get _itemTotal =>
      items.fold(0, (sum, item) => sum + (item.price * item.quantity));

  int get _toPay => _itemTotal + deliveryFee + packagingFee - discount;
  Future<void> _placeOrder(BuildContext context) async {
    final String orderNumber = '#DH${DateTime.now().millisecondsSinceEpoch}';

    final String restaurantNames = items
        .map((i) => i.variant)
        .toSet()
        .join(', ');

    final String itemsSummary = items
        .map((i) => '${i.name} x${i.quantity}')
        .join(', ');

    final DateTime now = DateTime.now();
    final int hour12 = now.hour % 12 == 0 ? 12 : now.hour % 12;
    final String period = now.hour >= 12 ? 'PM' : 'AM';
    final String minute = now.minute.toString().padLeft(2, '0');
    final String dateLabel = 'Today, $hour12:$minute $period';

    await OrderStore.instance.addOrder(
      OrderData(
        restaurantName: restaurantNames.isEmpty
            ? 'Your Order'
            : restaurantNames,
        orderNumber: orderNumber,
        status: 'ongoing',
        statusLabel: 'Order Placed',
        statusColor: Colors.orange,
        image: items.isNotEmpty ? items.first.image : '',
        items: itemsSummary,
        amount: '₹$_toPay',
        date: dateLabel,
        showTrackButton: true,
      ),
    );

    if (!context.mounted) return;

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => OrderSuccessScreen(orderId: orderNumber),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    // ⬇️ SINGLE SCALE — width-based, clamped so tablets don't explode
    final double rawScale = size.width / 360.0;
    final double scale = rawScale.clamp(0.85, 1.35);

    // ⬇️ Clamp accessibility text scaling
    final textScaler = MediaQuery.textScalerOf(
      context,
    ).clamp(minScaleFactor: 0.8, maxScaleFactor: 1.2);

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: textScaler),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // ===================================================================
            // RED HEADER + STEPPER
            // ===================================================================
            _CheckoutHeader(itemCount: items.length, scale: scale),

            // ===================================================================
            // SCROLLABLE CONTENT
            // ===================================================================
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.fromLTRB(
                  16 * scale,
                  16 * scale,
                  16 * scale,
                  150 * scale,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // -----------------------------------------------------------
                    // ALMOST THERE
                    // -----------------------------------------------------------
                    _AlmostThereCard(scale: scale),

                    SizedBox(height: 10 * scale),

                    // -----------------------------------------------------------
                    // DELIVERY ADDRESS
                    // -----------------------------------------------------------
                    _InfoRow(
                      icon: Icons.location_on_rounded,
                      title: 'Delivery to Home',
                      subtitle:
                          '123, 4th Cross, Koramangala 4th Block, Bengaluru - 560034',
                      actionLabel: 'Change',
                      scale: scale,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10 * scale),
                      child: Divider(height: 3, color: Colors.grey.shade200),
                    ),

                    // -----------------------------------------------------------
                    // DELIVERY TIME
                    // -----------------------------------------------------------
                    _InfoRow(
                      icon: Icons.access_time_rounded,
                      title: 'Delivery in 25 mins',
                      subtitle: 'Fast delivery to your doorstep',
                      actionLabel: 'Change',
                      scale: scale,
                    ),

                    SizedBox(height: 15 * scale),

                    // -----------------------------------------------------------
                    // ORDER SUMMARY
                    // -----------------------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Order Summary',
                          style: TextStyle(
                            fontSize: 17 * scale,
                            fontWeight: FontWeight.w800,
                            color: Colors.black87,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '${items.length} Items',
                              style: TextStyle(
                                color: kBrandRed,
                                fontSize: 13.5 * scale,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: 4 * scale),
                            Icon(
                              Icons.keyboard_arrow_up_rounded,
                              color: kBrandRed,
                              size: 19 * scale,
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 14 * scale),

                    ...items.map(
                      (item) => Padding(
                        padding: EdgeInsets.only(bottom: 14 * scale),
                        child: _CheckoutItemRow(data: item, scale: scale),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 2 * scale),
                      child: Divider(height: 1, color: Colors.grey.shade200),
                    ),

                    SizedBox(height: 14 * scale),

                    _PriceRow(
                      label: 'Item Total',
                      value: '₹$_itemTotal',
                      scale: scale,
                    ),
                    _PriceRow(
                      label: 'Delivery Fee',
                      value: '₹$deliveryFee',
                      scale: scale,
                      hasInfo: true,
                    ),
                    _PriceRow(
                      label: 'Packaging Fee',
                      value: '₹$packagingFee',
                      scale: scale,
                      hasInfo: true,
                    ),

                    SizedBox(height: 10 * scale),

                    // -----------------------------------------------------------
                    // SAVINGS
                    // -----------------------------------------------------------
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: 14 * scale,
                        vertical: 12 * scale,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEAF6E9),
                        borderRadius: BorderRadius.circular(13 * scale),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.local_offer_rounded,
                            color: Colors.green.shade700,
                            size: 20 * scale,
                          ),
                          SizedBox(width: 8 * scale),
                          Expanded(
                            child: Text(
                              'YAY! You saved ₹$discount on this order',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.green.shade800,
                                fontSize: 13 * scale,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            '- ₹$discount',
                            style: TextStyle(
                              color: Colors.green.shade800,
                              fontSize: 13 * scale,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 15 * scale),

                    // -----------------------------------------------------------
                    // TO PAY
                    // -----------------------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'To Pay',
                          style: TextStyle(
                            fontSize: 19 * scale,
                            fontWeight: FontWeight.w800,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          '₹$_toPay',
                          style: TextStyle(
                            fontSize: 22 * scale,
                            fontWeight: FontWeight.w800,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 18 * scale),

                    // -----------------------------------------------------------
                    // PAYMENT METHOD
                    // -----------------------------------------------------------
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 14 * scale),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14 * scale),
                        border: Border.all(color: Colors.grey.shade200),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 52 * scale,
                            child: Text(
                              'UPI',
                              style: TextStyle(
                                fontSize: 18 * scale,
                                fontWeight: FontWeight.w800,
                                fontStyle: FontStyle.italic,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          Text(
                            'UPI',
                            style: TextStyle(
                              fontSize: 14.5 * scale,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '******1234',
                            style: TextStyle(
                              fontSize: 13.5 * scale,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          SizedBox(width: 8 * scale),
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                Text(
                                  'Change',
                                  style: TextStyle(
                                    color: kBrandRed,
                                    fontSize: 13.5 * scale,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: kBrandRed,
                                  size: 19 * scale,
                                ),
                              ],
                            ),
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

        // =====================================================================
        // STICKY BOTTOM CHECKOUT BAR
        // =====================================================================
        bottomNavigationBar: SafeArea(
          top: false,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(
              18 * scale,
              12 * scale,
              18 * scale,
              8 * scale,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(26 * scale),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.10),
                  blurRadius: 18 * scale,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '₹$_toPay',
                          style: TextStyle(
                            fontSize: 18 * scale,
                            fontWeight: FontWeight.w800,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 3 * scale),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text(
                                'View Price Details',
                                style: TextStyle(
                                  color: kBrandRed,
                                  fontSize: 12.5 * scale,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Icon(
                                Icons.chevron_right_rounded,
                                color: kBrandRed,
                                size: 17 * scale,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 14 * scale),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          _placeOrder(context);
                        },
                        child: Container(
                          height: 52 * scale,
                          decoration: BoxDecoration(
                            color: Colors.red.shade600,
                            borderRadius: BorderRadius.circular(28 * scale),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Text(
                                'Place Order',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17 * scale,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Positioned(
                                right: 6 * scale,
                                child: Container(
                                  width: 38 * scale,
                                  height: 38 * scale,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_rounded,
                                    color: kBrandRed,
                                    size: 20 * scale,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8 * scale),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock_outline_rounded,
                      size: 17 * scale,
                      color: Colors.grey.shade600,
                    ),
                    SizedBox(width: 5 * scale),
                    Text(
                      'Safe & Secure Payments',
                      style: TextStyle(
                        fontSize: 12.5 * scale,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// =============================================================================
// CHECKOUT HEADER
// =============================================================================

class _CheckoutHeader extends StatelessWidget {
  final int itemCount;
  final double scale;

  const _CheckoutHeader({required this.itemCount, required this.scale});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(0.2, -0.75),
          radius: 1.35,
          colors: [kBrandRedLight, kBrandRed, kBrandRedDark],
          stops: [0.0, 0.55, 1.0],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            16 * scale,
            8 * scale,
            16 * scale,
            18 * scale,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).maybePop(),
                    child: Container(
                      width: 42 * scale,
                      height: 42 * scale,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.10),
                      ),
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                        size: 27 * scale,
                      ),
                    ),
                  ),
                  SizedBox(width: 12 * scale),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Checkout',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22 * scale,
                          fontWeight: FontWeight.w800,
                          height: 1.0,
                        ),
                      ),
                      SizedBox(height: 5 * scale),
                      Text(
                        '$itemCount Items',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.90),
                          fontSize: 13 * scale,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// =============================================================================
// ALMOST THERE CARD
// =============================================================================

class _AlmostThereCard extends StatelessWidget {
  final double scale;

  const _AlmostThereCard({required this.scale});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10 * scale),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17 * scale),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 92 * scale,
            height: 70 * scale,
            child: Image.asset(
              'assets/delivery_boy.png',
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) => Icon(
                Icons.delivery_dining_rounded,
                color: kBrandRed.withOpacity(0.4),
                size: 70 * scale,
              ),
            ),
          ),
          SizedBox(width: 10 * scale),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Almost there!',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 20 * scale,
                    fontWeight: FontWeight.w800,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 6 * scale),
                Text(
                  'Review your order and place it.',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13.5 * scale,
                    color: Colors.grey.shade600,
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
// INFO ROW
// =============================================================================

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? boldLine;
  final String subtitle;
  final String actionLabel;
  final double scale;

  const _InfoRow({
    required this.icon,
    required this.title,
    this.boldLine,
    required this.subtitle,
    required this.actionLabel,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40 * scale,
          height: 40 * scale,
          decoration: BoxDecoration(
            color: kBrandRed.withOpacity(0.07),
            borderRadius: BorderRadius.circular(15 * scale),
          ),
          child: Icon(icon, color: kBrandRed, size: 27 * scale),
        ),
        SizedBox(width: 14 * scale),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14 * scale,
                  color: Colors.black87,
                  fontWeight: FontWeight.w700,
                ),
              ),
              if (boldLine != null) ...[
                SizedBox(height: 5 * scale),
                Text(
                  boldLine!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 10 * scale,
                    fontWeight: FontWeight.w800,
                    color: Colors.black87,
                  ),
                ),
              ],
              SizedBox(height: 5 * scale),
              Text(
                subtitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 11 * scale,
                  height: 1.35,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 8 * scale),
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.only(top: 2 * scale),
            child: Text(
              actionLabel,
              style: TextStyle(
                color: kBrandRed,
                fontSize: 14 * scale,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// =============================================================================
// CHECKOUT ITEM ROW
// =============================================================================

class _CheckoutItemRow extends StatelessWidget {
  final CheckoutItemData data;
  final double scale;

  const _CheckoutItemRow({required this.data, required this.scale});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(9 * scale),
          child: Image.asset(
            data.image,
            width: 50 * scale,
            height: 50 * scale,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              width: 50 * scale,
              height: 50 * scale,
              color: Colors.grey.shade200,
              child: Icon(
                Icons.image_not_supported_outlined,
                color: Colors.grey.shade400,
                size: 24 * scale,
              ),
            ),
          ),
        ),
        SizedBox(width: 12 * scale),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 15 * scale,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 5 * scale),
              Text(
                data.variant,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12.5 * scale,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 38 * scale,
          height: 38 * scale,
          decoration: BoxDecoration(
            color: kBrandRed.withOpacity(0.06),
            borderRadius: BorderRadius.circular(9 * scale),
          ),
          child: Icon(
            Icons.delete_outline_rounded,
            color: kBrandRed,
            size: 20 * scale,
          ),
        ),
        SizedBox(width: 10 * scale),
        Text(
          '${data.quantity}',
          style: TextStyle(
            fontSize: 15 * scale,
            fontWeight: FontWeight.w700,
            color: Colors.black87,
          ),
        ),
        SizedBox(width: 10 * scale),
        Container(
          width: 38 * scale,
          height: 38 * scale,
          decoration: BoxDecoration(
            color: kBrandRed.withOpacity(0.06),
            borderRadius: BorderRadius.circular(9 * scale),
          ),
          child: Icon(Icons.add_rounded, color: kBrandRed, size: 23 * scale),
        ),
        SizedBox(width: 12 * scale),
        Text(
          '₹${data.price}',
          style: TextStyle(
            fontSize: 14.5 * scale,
            fontWeight: FontWeight.w800,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}

// =============================================================================
// PRICE ROW
// =============================================================================

class _PriceRow extends StatelessWidget {
  final String label;
  final String value;
  final bool hasInfo;
  final double scale;

  const _PriceRow({
    required this.label,
    required this.value,
    this.hasInfo = false,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10 * scale),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 14 * scale,
                  color: Colors.grey.shade700,
                ),
              ),
              if (hasInfo) ...[
                SizedBox(width: 5 * scale),
                Icon(
                  Icons.info_outline_rounded,
                  size: 15 * scale,
                  color: Colors.grey.shade500,
                ),
              ],
            ],
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14 * scale,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
