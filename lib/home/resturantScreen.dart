import 'package:deleivery_app/home/fooddetail.dart';
import 'package:deleivery_app/screens/trackingOrder/color.dart';
import 'package:deleivery_app/cart/cartScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantScreen extends StatefulWidget {
  final String restaurantName;
  final String heroImage;
  final String rating;
  final String reviewCount;
  final String deliveryTime;
  final String deliveryFee;
  final String categories;

  const RestaurantScreen({
    super.key,
    required this.restaurantName,
    required this.heroImage,
    required this.rating,
    required this.reviewCount,
    required this.deliveryTime,
    required this.deliveryFee,
    required this.categories,
  });

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  int selectedCategory = 0;
  bool _isFavorite = false;

  final List<String> categories = [
    'Recommended',
    'Popular',
    'Deals',
    'Biryani',
    'Pizza',
    'Burgers',
    'Kebabs',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kRestaurantBackground,
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            // ================================================================
            // HERO SECTION
            // ================================================================
            SliverToBoxAdapter(child: _buildHeroSection()),

            SliverToBoxAdapter(child: _buildRecommendedHeader()),

            // ================================================================
            // FOOD ITEMS
            // ================================================================
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final items = _getFoodItems();

                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 5.h,
                  ),
                  child: _FoodItemCard(
                    item: items[index],
                    restaurantName: widget.restaurantName,
                  ),
                );
              }, childCount: _getFoodItems().length),
            ),

            SliverToBoxAdapter(child: SizedBox(height: 30.h)),
          ],
        ),
      ),
    );
  }

  // ==========================================================================
  // HERO
  // ==========================================================================

  Widget _buildHeroSection() {
    return Container(
      height: 270.h,
      decoration: BoxDecoration(
        color: kRestaurantRed,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(28.r),
          bottomRight: Radius.circular(28.r),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          // ---------------------------------------------------------------
          // FOOD IMAGE
          // ---------------------------------------------------------------
          Positioned.fill(
            child: Image.asset(
              widget.heroImage,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) {
                return Container(
                  color: kRestaurantRedDark,
                  child: Icon(
                    Icons.restaurant_rounded,
                    color: Colors.white,
                    size: 80.sp,
                  ),
                );
              },
            ),
          ),

          // ---------------------------------------------------------------
          // DARK GRADIENT OVER IMAGE
          // ---------------------------------------------------------------
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.35),
                    Colors.transparent,
                    Colors.black.withOpacity(0.82),
                  ],
                  stops: const [0.0, 0.42, 1.0],
                ),
              ),
            ),
          ),

          // ---------------------------------------------------------------
          // BACK BUTTON
          // ---------------------------------------------------------------
          Positioned(
            top: MediaQuery.of(context).padding.top + 12.h,
            left: 16.w,
            child: _CircleActionButton(
              icon: Icons.arrow_back_rounded,
              onTap: () => Navigator.of(context).pop(),
            ),
          ),

          // ---------------------------------------------------------------
          // FAVORITE
          // ---------------------------------------------------------------
          Positioned(
            top: MediaQuery.of(context).padding.top + 12.h,
            right: 68.w,
            child: _CircleActionButton(
              icon: _isFavorite
                  ? Icons.favorite_rounded
                  : Icons.favorite_border_rounded,
              onTap: () {
                setState(() {
                  _isFavorite = !_isFavorite;
                });
              },
            ),
          ),

          // ---------------------------------------------------------------
          // SHARE
          // ---------------------------------------------------------------
          Positioned(
            top: MediaQuery.of(context).padding.top + 12.h,
            right: 16.w,
            child: _CircleActionButton(icon: Icons.share_rounded, onTap: () {}),
          ),

          // ---------------------------------------------------------------
          // RESTAURANT INFORMATION
          // ---------------------------------------------------------------
          Positioned(
            left: 18.w,
            right: 18.w,
            bottom: 18.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        widget.restaurantName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: Colors.white,
                      size: 24.sp,
                    ),
                  ],
                ),

                SizedBox(height: 3.h),

                Text(
                  widget.categories,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.95),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                SizedBox(height: 12.h),

                // Info chips
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _HeroInfoChip(
                        icon: Icons.star_rounded,
                        text: '${widget.rating} (${widget.reviewCount})',
                      ),

                      SizedBox(width: 7.w),

                      _HeroInfoChip(
                        icon: Icons.access_time_rounded,
                        text: widget.deliveryTime,
                      ),

                      SizedBox(width: 7.w),

                      _HeroInfoChip(
                        icon: Icons.delivery_dining_rounded,
                        text: widget.deliveryFee,
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

  // ==========================================================================
  // RECOMMENDED HEADER
  // ==========================================================================

  Widget _buildRecommendedHeader() {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 4.h, 16.w, 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Recommended for You',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 18.sp,
              fontWeight: FontWeight.w800,
            ),
          ),

          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  'See all',
                  style: TextStyle(
                    color: kRestaurantRed,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 3.w),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: kRestaurantRed,
                  size: 12.sp,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ==========================================================================
  // FOOD DATA
  // ==========================================================================

  List<_FoodItemData> _getFoodItems() {
    return [
      const _FoodItemData(
        image: 'assets/biryani.png',
        name: 'Chicken Biryani',
        description:
            'Aromatic basmati rice with tender chicken, royal spices and fresh herbs.',
        rating: '4.6',
        reviews: '5.2K',
        price: '₹149',
        oldPrice: '₹299',
        bestseller: true,
        veg: false,
      ),

      const _FoodItemData(
        image: 'assets/paneer.png',
        name: 'Paneer Butter Masala',
        description: 'Rich, creamy and flavourful North Indian classic.',
        rating: '4.5',
        reviews: '3.1K',
        price: '₹179',
        oldPrice: '₹299',
        bestseller: false,
        veg: true,
      ),

      const _FoodItemData(
        image: 'assets/rolls.png',
        name: 'Chicken Seekh Kebab',
        description: 'Juicy minced chicken kebabs, chargrilled to perfection.',
        rating: '4.4',
        reviews: '2.8K',
        price: '₹199',
        oldPrice: '₹349',
        bestseller: false,
        veg: false,
      ),

      const _FoodItemData(
        image: 'assets/pizza.png',
        name: 'Margherita Pizza',
        description:
            'Classic delight with fresh mozzarella, herbs and homemade sauce.',
        rating: '4.3',
        reviews: '1.9K',
        price: '₹249',
        oldPrice: '₹399',
        bestseller: false,
        veg: true,
      ),
    ];
  }
}

// =============================================================================
// HERO CIRCLE BUTTON
// =============================================================================

class _CircleActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _CircleActionButton({required this.icon, required this.onTap});

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

// =============================================================================
// HERO INFO CHIP
// =============================================================================

class _HeroInfoChip extends StatelessWidget {
  final IconData icon;
  final String text;

  const _HeroInfoChip({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.42),
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 14.sp),
          SizedBox(width: 4.w),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 10.5.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

// =============================================================================
// FOOD ITEM DATA
// =============================================================================

class _FoodItemData {
  final String image;
  final String name;
  final String description;
  final String rating;
  final String reviews;
  final String price;
  final String oldPrice;
  final bool bestseller;
  final bool veg;

  const _FoodItemData({
    required this.image,
    required this.name,
    required this.description,
    required this.rating,
    required this.reviews,
    required this.price,
    required this.oldPrice,
    required this.bestseller,
    required this.veg,
  });
}

// =============================================================================
// FOOD ITEM CARD
// =============================================================================

class _FoodItemCard extends StatefulWidget {
  final _FoodItemData item;
  final String restaurantName;

  const _FoodItemCard({required this.item, required this.restaurantName});

  @override
  State<_FoodItemCard> createState() => _FoodItemCardState();
}

class _FoodItemCardState extends State<_FoodItemCard> {
  bool _favorite = false;
  bool _added = false;

  void _openFoodDetail() {
    final item = widget.item;

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => FoodDetailScreen(
          restaurantName: widget.restaurantName,
          image: item.image,
          name: item.name,
          description: item.description,
          rating: item.rating,
          reviews: item.reviews,
          price: item.price,
          oldPrice: item.oldPrice,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final item = widget.item;

    return GestureDetector(
      onTap: _openFoodDetail,
      behavior: HitTestBehavior.opaque,
      child: Container(
        // ⬇️ NO fixed height here anymore — the card now sizes itself to
        // whatever its content actually needs, on any screen. This is what
        // was causing the 20px overflow: a fixed 128.h budget that some
        // phones' text metrics/pixel density don't fit into.
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.055),
              blurRadius: 8.r,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        // ⬇️ IntrinsicHeight makes the Row's children (image + details)
        // match each other's real height, instead of the image assuming
        // "double.infinity" from a parent that no longer has a fixed size.
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // ===============================================================
              // IMAGE
              // ===============================================================
              SizedBox(
                width: 132.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.r),
                    bottomLeft: Radius.circular(16.r),
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          item.image,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) {
                            return Container(
                              color: Colors.grey.shade200,
                              child: Icon(
                                Icons.fastfood_rounded,
                                color: Colors.grey,
                                size: 40.sp,
                              ),
                            );
                          },
                        ),
                      ),

                      if (item.bestseller)
                        Positioned(
                          top: 7.h,
                          left: 7.w,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 7.w,
                              vertical: 4.h,
                            ),
                            decoration: BoxDecoration(
                              color: kRestaurantRed,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Text(
                              'Bestseller',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8.5.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),

              // ===============================================================
              // DETAILS
              // ===============================================================
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10.w, 9.h, 8.w, 8.h),
                  child: Column(
                    // ⬇️ min instead of the old fixed-height + Spacer approach
                    // — the column now takes exactly the height its own
                    // children need, never more, never less, so it can never
                    // overflow its own budget again.
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          if (item.veg)
                            Container(
                              width: 12.w,
                              height: 12.w,
                              margin: EdgeInsets.only(right: 5.w),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.green,
                                  width: 1.2,
                                ),
                                borderRadius: BorderRadius.circular(2.r),
                              ),
                              child: Center(
                                child: Container(
                                  width: 6.w,
                                  height: 6.w,
                                  decoration: const BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),

                          Expanded(
                            child: Text(
                              item.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _favorite = !_favorite;
                              });
                            },
                            child: Icon(
                              _favorite
                                  ? Icons.favorite_rounded
                                  : Icons.favorite_border_rounded,
                              color: _favorite
                                  ? kRestaurantRed
                                  : Colors.grey.shade700,
                              size: 21.sp,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 3.h),

                      Text(
                        item.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 9.5.sp,
                          height: 1.25,
                        ),
                      ),

                      // ⬇️ Fixed small gap instead of Spacer() — Spacer only
                      // works safely when the parent's total height is fixed
                      // and guaranteed larger than its siblings; now that the
                      // card sizes to content, a flexible gap is not needed.
                      SizedBox(height: 8.h),

                      Row(
                        children: [
                          Icon(
                            Icons.star_rounded,
                            color: kRestaurantRed,
                            size: 14.sp,
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            '${item.rating} (${item.reviews})',
                            style: TextStyle(
                              fontSize: 9.5.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 3.h),

                      Row(
                        children: [
                          Text(
                            item.price,
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            item.oldPrice,
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 10.sp,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          const Spacer(),
                          _buildAddButton(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ==========================================================================
  // ADD TO CART BUTTON
  // ==========================================================================
  // Its own GestureDetector wins the tap over the card's outer one, so
  // tapping "Add" still adds directly to the cart without opening the
  // detail screen.
  // ==========================================================================

  Widget _buildAddButton() {
    return GestureDetector(
      onTap: () {
        // ==============================================================
        // ADD THIS FOOD ITEM TO THE SHARED CART
        // ==============================================================

        final int price =
            int.tryParse(widget.item.price.replaceAll(RegExp(r'[^0-9]'), '')) ??
            0;

        CartScreen.addToCart(
          image: widget.item.image,
          name: widget.item.name,
          restaurant: widget.restaurantName,
          price: price,
        );

        setState(() {
          _added = true;
        });

        // Small confirmation message
        ScaffoldMessenger.of(context).hideCurrentSnackBar();

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${widget.item.name} added to cart'),
            duration: const Duration(seconds: 1),
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        height: 34.h,
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          color: kRestaurantRed,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              _added ? Icons.check_rounded : Icons.add_rounded,
              color: Colors.white,
              size: 17.sp,
            ),

            SizedBox(width: 3.w),

            Text(
              _added ? 'Added' : 'Add',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
