import 'package:deleivery_app/screens/trackingOrder/color.dart';
import 'package:deleivery_app/cart/cartScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// =============================================================================
// FOOD DETAIL / CUSTOMIZATION SCREEN
// =============================================================================
// Opened when a food card on RestaurantScreen is tapped. Lets the user pick
// a size, add-ons, spice level, sauce, remove ingredients, a quantity and
// special instructions, then add the customized item to the cart.
// =============================================================================

class SizeOption {
  final String label;
  final int price;
  const SizeOption(this.label, this.price);
}

class FoodDetailScreen extends StatefulWidget {
  final String restaurantName;
  final String image;
  final String name;
  final String description;
  final String rating;
  final String reviews;
  final String price; // e.g. '₹149'
  final String oldPrice; // e.g. '₹299'

  const FoodDetailScreen({
    super.key,
    required this.restaurantName,
    required this.image,
    required this.name,
    required this.description,
    required this.rating,
    required this.reviews,
    required this.price,
    required this.oldPrice,
  });

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  late final int _basePrice = _parsePrice(widget.price);

  late final List<SizeOption> _sizes = [
    SizeOption('Small', (_basePrice * 0.73).round()),
    SizeOption('Medium', _basePrice),
    SizeOption('Large', (_basePrice * 1.33).round()),
  ];

  int _selectedSize = 1; // Medium
  bool _extraCheese = false;
  int _selectedSpice = 1; // Medium
  int _selectedSauce = 0; // Raita

  final List<String> _spiceLevels = ['Mild', 'Medium', 'Spicy', 'Extra Spicy'];

  final List<Map<String, dynamic>> _sauces = [
    {'label': 'Raita', 'emoji': '🥣', 'color': Colors.grey},
    {'label': 'Mint Chutney', 'emoji': '🥗', 'color': Colors.green},
    {'label': 'Schezwan Sauce', 'emoji': '🌶️', 'color': kRestaurantRed},
  ];

  final Map<String, bool> _removedIngredients = {'Onion': true, 'Tomato': true};

  int _quantity = 1;
  final TextEditingController _notesController = TextEditingController();

  static const int _extraCheesePrice = 30;

  int _parsePrice(String value) {
    return int.tryParse(value.replaceAll(RegExp(r'[^0-9]'), '')) ?? 0;
  }

  int get _unitPrice =>
      _sizes[_selectedSize].price + (_extraCheese ? _extraCheesePrice : 0);

  int get _totalPrice => _unitPrice * _quantity;

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // ===================================================================
          // SCROLLABLE CONTENT
          // ===================================================================
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: _buildHero(context)),
              SliverToBoxAdapter(child: _buildTopCard()),
              SliverToBoxAdapter(child: _SectionDivider()),
              SliverToBoxAdapter(child: _buildSizeSection()),
              SliverToBoxAdapter(child: _SectionDivider()),
              SliverToBoxAdapter(child: _buildCheeseSection()),
              SliverToBoxAdapter(child: _SectionDivider()),
              SliverToBoxAdapter(child: _buildSpiceSection()),
              SliverToBoxAdapter(child: _SectionDivider()),
              SliverToBoxAdapter(child: _buildSauceSection()),
              SliverToBoxAdapter(child: _SectionDivider()),
              SliverToBoxAdapter(child: _buildRemoveSection()),
              SliverToBoxAdapter(child: _SectionDivider()),
              SliverToBoxAdapter(child: _buildQuantityAndNotes()),
              SliverToBoxAdapter(child: SizedBox(height: 110.h)),
            ],
          ),

          // ===================================================================
          // BOTTOM ADD-TO-CART BAR
          // ===================================================================
          Positioned(left: 0, right: 0, bottom: 0, child: _buildBottomBar()),
        ],
      ),
    );
  }

  // ===========================================================================
  // HERO
  // ===========================================================================

  Widget _buildHero(BuildContext context) {
    return Container(
      height: 260.h,
      color: kRestaurantRedDark,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              widget.image,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                color: kRestaurantRedDark,
                child: Icon(
                  Icons.restaurant_rounded,
                  color: Colors.white,
                  size: 70.sp,
                ),
              ),
            ),
          ),

          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.35),
                    Colors.transparent,
                    Colors.black.withOpacity(0.55),
                  ],
                  stops: const [0.0, 0.45, 1.0],
                ),
              ),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).padding.top + 12.h,
            left: 16.w,
            child: _CircleActionButton(
              icon: Icons.arrow_back_rounded,
              onTap: () => Navigator.of(context).pop(),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).padding.top + 12.h,
            right: 68.w,
            child: const _CircleActionButton(
              icon: Icons.favorite_border_rounded,
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).padding.top + 12.h,
            right: 16.w,
            child: const _CircleActionButton(icon: Icons.share_rounded),
          ),

          Positioned(
            left: 16.w,
            bottom: 18.h,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.h),
              decoration: BoxDecoration(
                color: kRestaurantRed,
                borderRadius: BorderRadius.circular(12.r),
                boxShadow: [
                  BoxShadow(
                    color: kRestaurantRed.withOpacity(0.5),
                    blurRadius: 14.r,
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '50% OFF',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'ON SELECT ITEMS',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8.w),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: Colors.white,
                    size: 20.sp,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // TOP CARD (name, description, rating, price)
  // ===========================================================================

  Widget _buildTopCard() {
    return Transform.translate(
      offset: Offset(0, -18.h),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
        ),
        padding: EdgeInsets.fromLTRB(18.w, 12.h, 18.w, 4.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40.w,
                height: 4.h,
                margin: EdgeInsets.only(bottom: 14.h),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(14.r),
                  child: Image.asset(
                    widget.image,
                    width: 84.w,
                    height: 84.w,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      width: 84.w,
                      height: 84.w,
                      color: Colors.grey.shade200,
                      child: Icon(
                        Icons.fastfood_rounded,
                        color: Colors.grey,
                        size: 32.sp,
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 14.w),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              widget.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          Container(
                            width: 34.w,
                            height: 34.w,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.favorite_border_rounded,
                              color: Colors.black87,
                              size: 18.sp,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 4.h),

                      Text(
                        widget.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 11.5.sp,
                          height: 1.3,
                        ),
                      ),

                      SizedBox(height: 6.h),

                      Row(
                        children: [
                          Icon(
                            Icons.star_rounded,
                            color: kRestaurantRed,
                            size: 15.sp,
                          ),
                          SizedBox(width: 3.w),
                          Text(
                            '${widget.rating} (${widget.reviews})',
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 4.h),

                      Row(
                        children: [
                          Text(
                            '₹$_unitPrice',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(width: 6.w),
                          Text(
                            widget.oldPrice,
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 12.sp,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // ===========================================================================
  // SIZE
  // ===========================================================================

  Widget _buildSizeSection() {
    return _Section(
      icon: Icons.crop_free_rounded,
      title: 'Size',
      subtitle: 'Choose your portion size',
      child: Row(
        children: List.generate(_sizes.length, (index) {
          final option = _sizes[index];
          final selected = _selectedSize == index;

          return Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                right: index != _sizes.length - 1 ? 8.w : 0,
              ),
              child: _ChoiceChip(
                selected: selected,
                onTap: () => setState(() => _selectedSize = index),
                child: Column(
                  children: [
                    Text(
                      option.label,
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                        color: selected ? kRestaurantRed : Colors.black87,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      '₹${option.price}',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: selected ? kRestaurantRed : Colors.grey.shade600,
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
  // EXTRA CHEESE
  // ===========================================================================

  Widget _buildCheeseSection() {
    return _Section(
      icon: Icons.local_pizza_rounded,
      title: 'Extra Cheese',
      subtitle: 'Make it more cheesy and delicious',
      trailing: Row(
        children: [
          Text(
            '+ ₹$_extraCheesePrice',
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black87,
            ),
          ),
          SizedBox(width: 8.w),
          Switch(
            value: _extraCheese,
            activeColor: kRestaurantRed,
            onChanged: (value) => setState(() => _extraCheese = value),
          ),
        ],
      ),
      child: const SizedBox.shrink(),
    );
  }

  // ===========================================================================
  // SPICE LEVEL
  // ===========================================================================

  Widget _buildSpiceSection() {
    return _Section(
      icon: Icons.local_fire_department_rounded,
      title: 'Spice Level',
      subtitle: 'Choose your preferred spice level',
      child: Row(
        children: List.generate(_spiceLevels.length, (index) {
          final selected = _selectedSpice == index;

          return Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                right: index != _spiceLevels.length - 1 ? 8.w : 0,
              ),
              child: _ChoiceChip(
                selected: selected,
                onTap: () => setState(() => _selectedSpice = index),
                child: Column(
                  children: [
                    Text(
                      '🌶️' * (index + 1),
                      style: TextStyle(fontSize: 12.sp),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      _spiceLevels[index],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: selected ? kRestaurantRed : Colors.black87,
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
  // SAUCE CHOICE
  // ===========================================================================

  Widget _buildSauceSection() {
    return _Section(
      icon: Icons.soup_kitchen_rounded,
      title: 'Sauce Choice',
      subtitle: 'Select one sauce',
      child: Row(
        children: List.generate(_sauces.length, (index) {
          final sauce = _sauces[index];
          final selected = _selectedSauce == index;

          return Expanded(
            child: GestureDetector(
              onTap: () => setState(() => _selectedSauce = index),
              behavior: HitTestBehavior.opaque,
              child: Column(
                children: [
                  Radio<int>(
                    value: index,
                    groupValue: _selectedSauce,
                    activeColor: kRestaurantRed,
                    onChanged: (value) =>
                        setState(() => _selectedSauce = value!),
                  ),
                  Container(
                    width: 46.w,
                    height: 46.w,
                    decoration: BoxDecoration(
                      color: (sauce['color'] as Color).withOpacity(0.12),
                      shape: BoxShape.circle,
                      border: selected
                          ? Border.all(color: kRestaurantRed, width: 1.6)
                          : null,
                    ),
                    child: Center(
                      child: Text(
                        sauce['emoji'] as String,
                        style: TextStyle(fontSize: 20.sp),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    sauce['label'] as String,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      color: selected ? kRestaurantRed : Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  // ===========================================================================
  // REMOVE INGREDIENTS
  // ===========================================================================

  Widget _buildRemoveSection() {
    return _Section(
      icon: Icons.remove_circle_outline_rounded,
      title: 'Remove from ${widget.name.split(' ').last}',
      subtitle: 'Customize your ingredients',
      child: Wrap(
        spacing: 10.w,
        runSpacing: 8.h,
        children: _removedIngredients.keys.map((ingredient) {
          final selected = _removedIngredients[ingredient]!;

          return GestureDetector(
            onTap: () =>
                setState(() => _removedIngredients[ingredient] = !selected),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: selected
                    ? kRestaurantRed.withOpacity(0.08)
                    : Colors.white,
                borderRadius: BorderRadius.circular(30.r),
                border: Border.all(
                  color: selected ? kRestaurantRed : Colors.grey.shade300,
                  width: 1.2,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.remove_circle_rounded,
                    color: selected ? kRestaurantRed : Colors.grey.shade400,
                    size: 16.sp,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    ingredient,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: selected ? kRestaurantRed : Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  // ===========================================================================
  // QUANTITY + SPECIAL INSTRUCTIONS
  // ===========================================================================

  Widget _buildQuantityAndNotes() {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.w, 14.h, 18.w, 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.shopping_cart_rounded,
                color: kRestaurantRed,
                size: 20.sp,
              ),
              SizedBox(width: 8.w),
              Text(
                'Quantity',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
              ),
            ],
          ),

          SizedBox(height: 10.h),

          Row(
            children: [
              _QuantityButton(
                icon: Icons.remove_rounded,
                onTap: () {
                  if (_quantity > 1) setState(() => _quantity--);
                },
              ),
              SizedBox(width: 14.w),
              Text(
                '$_quantity',
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w800),
              ),
              SizedBox(width: 14.w),
              _QuantityButton(
                icon: Icons.add_rounded,
                onTap: () => setState(() => _quantity++),
              ),
            ],
          ),

          SizedBox(height: 18.h),

          Row(
            children: [
              Icon(Icons.edit_note_rounded, color: kRestaurantRed, size: 20.sp),
              SizedBox(width: 8.w),
              Text(
                'Special Instructions ',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
              ),
              Text(
                '(Optional)',
                style: TextStyle(fontSize: 12.sp, color: Colors.grey.shade500),
              ),
            ],
          ),

          SizedBox(height: 8.h),

          TextField(
            controller: _notesController,
            maxLength: 200,
            maxLines: 2,
            onChanged: (_) => setState(() {}),
            decoration: InputDecoration(
              hintText: 'E.g. Less spicy, no onions, extra gravy, etc.',
              hintStyle: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 12.5.sp,
              ),
              filled: true,
              fillColor: Colors.grey.shade50,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 10.h,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(color: Colors.grey.shade200),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(color: Colors.grey.shade200),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(color: kRestaurantRed),
              ),
            ),
            style: TextStyle(fontSize: 12.5.sp),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // BOTTOM BAR
  // ===========================================================================

  Widget _buildBottomBar() {
    return Container(
      padding: EdgeInsets.fromLTRB(18.w, 12.h, 18.w, 20.h),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 14.r,
            offset: Offset(0, -3.h),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          CartScreen.addToCart(
            image: widget.image,
            name: widget.name,
            restaurant: widget.restaurantName,
            price: _unitPrice,
          );

          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('${widget.name} added to cart'),
              duration: const Duration(seconds: 1),
              behavior: SnackBarBehavior.floating,
            ),
          );

          Navigator.of(context).pop();
        },
        child: Container(
          height: 54.h,
          decoration: BoxDecoration(
            color: kRestaurantRed,
            borderRadius: BorderRadius.circular(30.r),
            boxShadow: [
              BoxShadow(
                color: kRestaurantRed.withOpacity(0.45),
                blurRadius: 18.r,
                offset: Offset(0, 6.h),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Add to Cart',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(width: 10.w),
              Container(width: 1, height: 18.h, color: Colors.white38),
              SizedBox(width: 10.w),
              Text(
                '₹$_totalPrice',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w800,
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
    );
  }
}

// =============================================================================
// SECTION WRAPPER
// =============================================================================

class _Section extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Widget child;
  final Widget? trailing;

  const _Section({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.child,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.w, 14.h, 18.w, 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 36.w,
                height: 36.w,
                decoration: BoxDecoration(
                  color: kRestaurantRed.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Icon(icon, color: kRestaurantRed, size: 18.sp),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 11.sp,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ),
              if (trailing != null) trailing!,
            ],
          ),

          SizedBox(height: 12.h),

          child,
        ],
      ),
    );
  }
}

class _SectionDivider extends StatelessWidget {
  const _SectionDivider();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 6.h),
      child: Divider(height: 1, thickness: 0.8, color: Colors.grey.shade200),
    );
  }
}

// =============================================================================
// CHOICE CHIP
// =============================================================================

class _ChoiceChip extends StatelessWidget {
  final bool selected;
  final VoidCallback onTap;
  final Widget child;

  const _ChoiceChip({
    required this.selected,
    required this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          color: selected ? kRestaurantRed.withOpacity(0.08) : Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: selected ? kRestaurantRed : Colors.grey.shade300,
            width: 1.2,
          ),
        ),
        child: Center(child: child),
      ),
    );
  }
}

// =============================================================================
// QUANTITY BUTTON
// =============================================================================

class _QuantityButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _QuantityButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 34.w,
        height: 34.w,
        decoration: BoxDecoration(
          color: kRestaurantRed.withOpacity(0.08),
          shape: BoxShape.circle,
          border: Border.all(color: kRestaurantRed.withOpacity(0.35)),
        ),
        child: Icon(icon, color: kRestaurantRed, size: 17.sp),
      ),
    );
  }
}

// =============================================================================
// HERO CIRCLE BUTTON (shared visual style with RestaurantScreen)
// =============================================================================

class _CircleActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;

  const _CircleActionButton({required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 44.w,
        height: 44.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black.withOpacity(0.25),
          border: Border.all(color: Colors.white.withOpacity(0.65), width: 1),
        ),
        child: Icon(icon, color: Colors.white, size: 22.sp),
      ),
    );
  }
}
