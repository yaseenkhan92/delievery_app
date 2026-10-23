import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// =============================================================================
// FLOATING CART BAR  (Blinkit-style "View Cart" bar)
// =============================================================================
// Shows a red bar with the item count and a "View Cart" button.
// - itemCount > 0  -> bar slides up + fades in
// - itemCount == 0 -> bar slides down + fades out and takes no space
//
// It has no dependency on your cart classes: just pass the total quantity and
// an onTap. Put it directly above your bottom nav bar (see HomeScreen edit).
// =============================================================================

const Color _cartBarRed = Color(0xFFD33220);
const Color _cartBarRedDark = Color(0xFFA02014);

class FloatingCartBar extends StatelessWidget {
  final int itemCount;
  final VoidCallback onTap;

  const FloatingCartBar({
    super.key,
    required this.itemCount,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOutCubic,
      alignment: Alignment.bottomCenter,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        switchInCurve: Curves.easeOutCubic,
        switchOutCurve: Curves.easeInCubic,
        transitionBuilder: (child, animation) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.6),
              end: Offset.zero,
            ).animate(animation),
            child: FadeTransition(opacity: animation, child: child),
          );
        },
        child: itemCount > 0
            ? _buildBar()
            : const SizedBox(
                key: ValueKey('cart_bar_empty'),
                width: double.infinity,
                height: 0,
              ),
      ),
    );
  }

  Widget _buildBar() {
    final String countText = itemCount == 1 ? '1 item' : '$itemCount items';

    return Padding(
      key: const ValueKey('cart_bar_visible'),
      padding: EdgeInsets.only(bottom: 8.h),
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: Container(
          width: double.infinity,
          height: 52.h,
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [_cartBarRed, _cartBarRedDark],
            ),
            borderRadius: BorderRadius.circular(28.r),
            boxShadow: [
              BoxShadow(
                color: _cartBarRed.withOpacity(0.35),
                blurRadius: 14.r,
                offset: Offset(0, 4.h),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 34.w,
                height: 34.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.2),
                ),
                child: Icon(
                  Icons.shopping_bag_rounded,
                  color: Colors.white,
                  size: 18.sp,
                ),
              ),

              SizedBox(width: 10.w),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'View Cart',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800,
                        height: 1.1,
                      ),
                    ),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 200),
                      child: Text(
                        countText,
                        key: ValueKey(countText),
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: 30.w,
                height: 30.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.arrow_forward_rounded,
                  color: _cartBarRed,
                  size: 16.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
