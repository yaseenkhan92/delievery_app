import 'package:deleivery_app/cart/checkoutScreen.dart';
import 'package:deleivery_app/cart/emptycart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color kBrandRed = Color(0xFFC1291C);
const Color kBrandRedLight = Color(0xFFE0362A);
const Color kBrandRedDark = Color(0xFF8E1C12);

// =============================================================================
// CART ITEM DATA
// =============================================================================

class CartItemData {
  final String image;
  final String name;
  final String restaurant;
  final int price;
  int quantity;

  CartItemData({
    required this.image,
    required this.name,
    required this.restaurant,
    required this.price,
    this.quantity = 1,
  });
}

// =============================================================================
// SHARED CART DATA
// =============================================================================

class CartController {
  static final ValueNotifier<List<CartItemData>> items =
      ValueNotifier<List<CartItemData>>([]);

  static void addToCart({
    required String image,
    required String name,
    required String restaurant,
    required int price,
  }) {
    final newItems = List<CartItemData>.from(items.value);

    final existingIndex = newItems.indexWhere(
      (item) =>
          item.name == name &&
          item.restaurant == restaurant &&
          item.price == price,
    );

    if (existingIndex >= 0) {
      newItems[existingIndex].quantity++;
    } else {
      newItems.add(
        CartItemData(
          image: image,
          name: name,
          restaurant: restaurant,
          price: price,
        ),
      );
    }

    items.value = newItems;
  }

  static void increaseQuantity(int index) {
    final newItems = List<CartItemData>.from(items.value);

    newItems[index].quantity++;

    items.value = newItems;
  }

  static void decreaseQuantity(int index) {
    final newItems = List<CartItemData>.from(items.value);

    if (newItems[index].quantity > 1) {
      newItems[index].quantity--;
    } else {
      newItems.removeAt(index);
    }

    items.value = newItems;
  }

  static void removeItem(int index) {
    final newItems = List<CartItemData>.from(items.value);

    newItems.removeAt(index);

    items.value = newItems;
  }

  static void clearCart() {
    items.value = [];
  }
}

// =============================================================================
// CART SCREEN
// =============================================================================

class CartScreen extends StatelessWidget {
  final VoidCallback? onBackToHome;

  const CartScreen({super.key, this.onBackToHome});

  // ===========================================================================
  // THIS IS WHAT HOME / RESTAURANT SCREEN WILL CALL
  // ===========================================================================

  static void addToCart({
    required String image,
    required String name,
    required String restaurant,
    required int price,
  }) {
    CartController.addToCart(
      image: image,
      name: name,
      restaurant: restaurant,
      price: price,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<CartItemData>>(
      valueListenable: CartController.items,
      builder: (context, items, child) {
        // =====================================================================
        // EMPTY CART
        // =====================================================================

        if (items.isEmpty) {
          return Scaffold(
            backgroundColor: const Color(0xFFF7F7F7),
            body: Column(
              children: [
                _buildHeader(context, items),
                Expanded(
                  child: EmptyCartScreen(onBrowseRestaurants: onBackToHome),
                ),
              ],
            ),
          );
        }

        // =====================================================================
        // CART HAS DATA
        // =====================================================================

        final subtotal = items.fold<int>(
          0,
          (sum, item) => sum + item.price * item.quantity,
        );

        const deliveryFee = 29;
        const platformFee = 10;
        const taxesAndCharges = 35;

        final total = subtotal + deliveryFee + platformFee + taxesAndCharges;

        return Scaffold(
          backgroundColor: const Color(0xFFF7F7F7),
          body: Column(
            children: [
              _buildHeader(context, items),

              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(16.w, 14.h, 16.w, 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // =======================================================
                      // CART ITEMS
                      // =======================================================
                      ...List.generate(items.length, (index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 12.h),
                          child: _CartItemCard(
                            data: items[index],
                            onIncrement: () {
                              CartController.increaseQuantity(index);
                            },
                            onDecrement: () {
                              CartController.decreaseQuantity(index);
                            },
                            onDelete: () {
                              CartController.removeItem(index);
                            },
                          ),
                        );
                      }),

                      SizedBox(height: 8.h),

                      // =======================================================
                      // PROMO
                      // =======================================================
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 14.w,
                          vertical: 12.h,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.local_offer_rounded,
                              color: kBrandRed,
                              size: 20.sp,
                            ),

                            SizedBox(width: 10.w),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Have a promo code?',
                                    style: TextStyle(
                                      fontSize: 13.5.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),

                                  Text(
                                    'Apply code & get discounts',
                                    style: TextStyle(
                                      fontSize: 11.5.sp,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Text(
                              'Apply',
                              style: TextStyle(
                                color: kBrandRed,
                                fontSize: 13.5.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),

                            Icon(
                              Icons.chevron_right_rounded,
                              color: kBrandRed,
                              size: 18.sp,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 18.h),

                      // =======================================================
                      // BILL SUMMARY
                      // =======================================================
                      Text(
                        'Bill Summary',
                        style: TextStyle(
                          fontSize: 15.5.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),

                      SizedBox(height: 10.h),

                      _BillRow(
                        label: 'Subtotal (${items.length} items)',
                        value: '₹$subtotal',
                      ),

                      _BillRow(label: 'Delivery Fee', value: '₹$deliveryFee'),

                      _BillRow(label: 'Platform Fee', value: '₹$platformFee'),

                      _BillRow(
                        label: 'Taxes & Charges',
                        value: '₹$taxesAndCharges',
                      ),

                      SizedBox(height: 8.h),

                      const Divider(),

                      SizedBox(height: 8.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),

                          Text(
                            '₹$total',
                            style: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 18.h),

                      // =======================================================
                      // CHECKOUT
                      // =======================================================
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => CheckoutScreen(
                                items: items
                                    .map(
                                      (item) => CheckoutItemData(
                                        image: item.image,
                                        name: item.name,
                                        variant: item.restaurant,
                                        price: item.price,
                                        quantity: item.quantity,
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 54.h,
                          decoration: BoxDecoration(
                            color: kBrandRed,
                            borderRadius: BorderRadius.circular(28.r),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Text(
                                'Proceed to Checkout',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),

                              Positioned(
                                right: 8.w,
                                child: Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.white,
                                  size: 23.sp,
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
            ],
          ),
        );
      },
    );
  }

  // ===========================================================================
  // HEADER
  // ===========================================================================

  Widget _buildHeader(BuildContext context, List<CartItemData> items) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(0.3, -0.6),
          radius: 1.3,
          colors: [kBrandRedLight, kBrandRed, kBrandRedDark],
          stops: [0.0, 0.55, 1.0],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 16.h),
          child: Row(
            children: [
              GestureDetector(
                onTap: onBackToHome,
                child: Container(
                  width: 38.w,
                  height: 38.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.18),
                    border: Border.all(color: Colors.white.withOpacity(0.35)),
                  ),
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                    size: 20.sp,
                  ),
                ),
              ),

              SizedBox(width: 12.w),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Cart',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    Text(
                      items.isEmpty
                          ? 'Review your order before checkout'
                          : '${items.length} item${items.length == 1 ? '' : 's'} in your cart',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 12.5.sp,
                      ),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: items.isEmpty ? null : CartController.clearCart,
                child: Text(
                  'Clear Cart',
                  style: TextStyle(
                    color: Colors.white.withOpacity(items.isEmpty ? 0.5 : 1),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
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
// CART ITEM
// =============================================================================

class _CartItemCard extends StatelessWidget {
  final CartItemData data;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onDelete;

  const _CartItemCard({
    required this.data,
    required this.onIncrement,
    required this.onDecrement,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Image.asset(
              data.image,
              width: 68.w,
              height: 68.h,
              fit: BoxFit.cover,
            ),
          ),

          SizedBox(width: 10.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        data.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14.5.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: onDelete,
                      child: Icon(
                        Icons.delete_outline_rounded,
                        color: Colors.grey.shade500,
                        size: 20.sp,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 3.h),

                Text(
                  data.restaurant,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey.shade600,
                  ),
                ),

                SizedBox(height: 6.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '₹${data.price}',
                      style: TextStyle(
                        fontSize: 14.5.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    Row(
                      children: [
                        _QtyButton(
                          icon: Icons.remove_rounded,
                          onTap: onDecrement,
                          filled: false,
                        ),

                        SizedBox(width: 10.w),

                        Text(
                          '${data.quantity}',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        SizedBox(width: 10.w),

                        _QtyButton(
                          icon: Icons.add_rounded,
                          onTap: onIncrement,
                          filled: true,
                        ),
                      ],
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
}

// =============================================================================
// QUANTITY BUTTON
// =============================================================================

class _QtyButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final bool filled;

  const _QtyButton({
    required this.icon,
    required this.onTap,
    required this.filled,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 24.w,
        height: 24.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: filled ? kBrandRed : kBrandRed.withOpacity(0.10),
        ),
        child: Icon(
          icon,
          color: filled ? Colors.white : kBrandRed,
          size: 14.sp,
        ),
      ),
    );
  }
}

// =============================================================================
// BILL ROW
// =============================================================================

class _BillRow extends StatelessWidget {
  final String label;
  final String value;

  const _BillRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 13.5.sp, color: Colors.grey.shade700),
          ),

          Text(
            value,
            style: TextStyle(fontSize: 13.5.sp, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
