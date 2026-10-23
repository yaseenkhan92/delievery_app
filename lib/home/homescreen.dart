import 'package:deleivery_app/cart/floatingcart.dart';
import 'package:deleivery_app/order/orderscreen.dart';
import 'package:deleivery_app/screens/location/deleiveryAddressScreen.dart';
import 'package:deleivery_app/home/resturantScreen.dart';
import 'package:deleivery_app/search/search.dart';
import 'package:deleivery_app/services/servicegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../search/searchScreen.dart';
import '../cart/cartScreen.dart';
import '../profile/profileScreen.dart';

const Color kBrandRed = Color(0xFFD33220);

const Color kBrandRedLight = Color(0xFFBF2B1C);

const Color kBrandRedDark = Color(0xFFA02014);

// =============================================================================
// SCROLL BEHAVIOR
// =============================================================================
// Removes the Android overscroll "glow" so every scrollable in the app
// (Home + Profile included) rides on the same soft bounce instead of a mix
// of glow + bounce, which is what was reading as "not smooth".
// =============================================================================

class _NoGlowScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}

// =============================================================================
// RESPONSIVE SCALE
// =============================================================================

double measureTextHeight(
  BuildContext context, {
  required String text,
  required TextStyle style,
  required double maxWidth,
  int? maxLines,
}) {
  final TextPainter painter = TextPainter(
    text: TextSpan(text: text, style: style),
    maxLines: maxLines,
    textDirection: TextDirection.ltr,
    textScaler: MediaQuery.textScalerOf(context),
  )..layout(maxWidth: maxWidth > 0 ? maxWidth : 0);

  return painter.height;
}

// =============================================================================
// HOME SCREEN
// =============================================================================

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final ScrollController _scrollController = ScrollController();

  final ValueNotifier<double> _bottomBarTranslation = ValueNotifier<double>(
    0.0,
  );

  double _lastOffset = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);

    // NEW: when Home opens (app open, or after the user confirmed a new
    // location) read the saved lat/lng and call
    //   GET /consumer/config/zone-id  ->  GET /consumer/restaurants/nearby
    // After the first frame, so nothing rebuilds while the screen is building.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ServiceAvailability.instance.check();
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _bottomBarTranslation.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;

    final double currentOffset = _scrollController.position.pixels;

    final double delta = currentOffset - _lastOffset;

    _lastOffset = currentOffset;

    if (delta == 0) return;

    if (currentOffset <= 0) {
      if (_bottomBarTranslation.value != 0) {
        _bottomBarTranslation.value = 0;
      }
      return;
    }

    final double maxTranslation = 72.h;

    final double newTranslation = (_bottomBarTranslation.value + delta).clamp(
      0.0,
      maxTranslation,
    );

    if (newTranslation != _bottomBarTranslation.value) {
      _bottomBarTranslation.value = newTranslation;
    }
  }

  void _onTabTap(int index) {
    setState(() {
      _currentIndex = index;
    });

    _bottomBarTranslation.value = 0;

    _lastOffset = _scrollController.hasClients
        ? _scrollController.position.pixels
        : 0;
  }

  // ===========================================================================
  // HOME TAB
  // ===========================================================================
  // CHANGED:
  //  1. Typing in the Home search bar now shows the search results here
  //     (header + pinned search bar stay, only the content below swaps).
  //  2. Native Android scroll physics (ClampingScrollPhysics): the page stops
  //     exactly at the top / bottom, no more flying past the content. A small
  //     stretch effect shows at the edge (delete the StretchingOverscrollIndicator
  //     wrapper if you want no effect at all).
  //  3. RepaintBoundary around the big sections so scrolling stays smooth.
  //  4. NEW: the content under the search bar is wrapped in ServiceGate.
  //     Restaurants found -> normal content. None -> "Service unavailable".
  //     The location header + search bar stay visible, so the user can tap
  //     the address and pick another location.
  // ===========================================================================

  Widget _buildHomeCollapsingView() {
    return ValueListenableBuilder<String>(
      valueListenable: SearchStore.query,
      builder: (context, query, _) {
        final bool searching = query.trim().isNotEmpty;

        return StretchingOverscrollIndicator(
          axisDirection: AxisDirection.down,
          child: CustomScrollView(
            controller: _scrollController,
            physics: const ClampingScrollPhysics(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              const SliverToBoxAdapter(child: _HomeLocationHeader()),

              SliverPersistentHeader(
                pinned: true,
                delegate: _PinnedSearchBarDelegate(),
              ),

              if (searching)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.h, bottom: 140.h),
                    child: SearchResultsView(query: query),
                  ),
                )
              else
                SliverToBoxAdapter(
                  child: ServiceGate(
                    // Room for the spinner / "unavailable" message inside
                    // the scroll view.
                    placeholderHeight: 420.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const RepaintBoundary(child: CategoryRow()),

                        RepaintBoundary(
                          child: Padding(
                            padding: EdgeInsets.only(top: 12.h, bottom: 100.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.w,
                                  ),
                                  child: const PromoBannerCarousel(),
                                ),

                                SizedBox(height: 18.h),

                                const TopPicksSection(),

                                SizedBox(height: 8.h),

                                const WhatsOnYourMindSection(),

                                SizedBox(height: 22.h),

                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.w,
                                  ),
                                  child: const FreeDeliveryBanner(),
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
  // OTHER TABS
  // ===========================================================================

  Widget _buildOtherTabsView() {
    if (_currentIndex == 1) {
      return SearchScreen(
        onScrollDirectionChanged: (bool show) {
          if (show) {
            _bottomBarTranslation.value = 0;
          }
        },
      );
    }

    if (_currentIndex == 3) {
      return CartScreen(
        onBackToHome: () {
          setState(() {
            _currentIndex = 0;
          });

          _bottomBarTranslation.value = 0;

          _lastOffset = _scrollController.hasClients
              ? _scrollController.position.pixels
              : 0;
        },
      );
    }

    if (_currentIndex == 2) {
      return const OrdersScreen();
    }

    if (_currentIndex == 4) {
      // Profile owns the full screen now — no more TopHeader (location +
      // search bar) stacked above it. It reuses the Home tab's
      // ScrollController so its own scrolling drives the bottom nav bar's
      // hide/show animation exactly the way the Home tab does.
      return ProfileScreen(scrollController: _scrollController);
    }

    return const SizedBox();
  }

  // ===========================================================================
  // BUILD
  // ===========================================================================

  @override
  Widget build(BuildContext context) {
    final textScaler = MediaQuery.textScalerOf(
      context,
    ).clamp(minScaleFactor: 0.8, maxScaleFactor: 1.2);

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: textScaler),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned.fill(
              child: ScrollConfiguration(
                behavior: _NoGlowScrollBehavior(),
                child: _currentIndex == 0
                    ? _buildHomeCollapsingView()
                    : _buildOtherTabsView(),
              ),
            ),

            if (_currentIndex != 3)
              ValueListenableBuilder<double>(
                valueListenable: _bottomBarTranslation,
                builder: (context, translation, child) {
                  return IgnorePointer(
                    ignoring: translation >= 72.h,
                    child: Transform.translate(
                      offset: Offset(0, translation),
                      child: child,
                    ),
                  );
                },
                child: ValueListenableBuilder<List<CartItemData>>(
                  valueListenable: CartController.items,
                  builder: (context, cartItems, child) {
                    final int cartCount = cartItems.fold(
                      0,
                      (sum, item) => sum + item.quantity,
                    );

                    return RepaintBoundary(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 16.w,
                          right: 16.w,
                          bottom: 16.h,
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // NEW: Blinkit-style bar. Shows only while the cart has items.
                              FloatingCartBar(
                                itemCount: cartCount,
                                onTap: () => _onTabTap(3), // opens the Cart tab
                              ),
                              CustomBottomNavBar(
                                currentIndex: _currentIndex,
                                cartCount: cartCount,
                                onTap: _onTabTap,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// HOME LOCATION HEADER
// =============================================================================

class _HomeLocationHeader extends StatelessWidget {
  const _HomeLocationHeader();

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0.3, -0.6),
            radius: 1.3,
            colors: [kBrandRedLight, kBrandRedLight, kBrandRedLight],
            stops: [0.0, 0.55, 1.0],
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 16.h),
            child: const _HeaderLocationRow(),
          ),
        ),
      ),
    );
  }
}

// =============================================================================
// PINNED SEARCH BAR DELEGATE
// =============================================================================

class _PinnedSearchBarDelegate extends SliverPersistentHeaderDelegate {
  _PinnedSearchBarDelegate() : _verticalPad = 12.h, _barHeight = 47.h;

  final double _verticalPad;
  final double _barHeight;

  double get _totalHeight => (_verticalPad * 2) + _barHeight;

  @override
  double get minExtent => _totalHeight;

  @override
  double get maxExtent => _totalHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return RepaintBoundary(
      child: Container(
        width: double.infinity,
        color: kBrandRedLight,
        padding: EdgeInsets.fromLTRB(16.w, _verticalPad, 16.w, _verticalPad),
        child: _SearchBarField(searchBarHeight: _barHeight),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant _PinnedSearchBarDelegate oldDelegate) {
    return oldDelegate._verticalPad != _verticalPad ||
        oldDelegate._barHeight != _barHeight;
  }
}

// =============================================================================
// HEADER LOCATION ROW
// =============================================================================

class _HeaderLocationRow extends StatefulWidget {
  const _HeaderLocationRow();

  @override
  State<_HeaderLocationRow> createState() => _HeaderLocationRowState();
}

class _HeaderLocationRowState extends State<_HeaderLocationRow> {
  String _address = 'Set your location';

  @override
  void initState() {
    super.initState();
    _loadAddress();
  }

  Future<void> _loadAddress() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getString(kSavedAddress);

    if (mounted && saved != null && saved.trim().isNotEmpty) {
      setState(() => _address = saved);
    }
  }

  Future<void> _openLocationPicker() async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const DeliveryAddressScreen()),
    );

    _loadAddress();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: _openLocationPicker,
            child: Row(
              children: [
                Flexible(
                  child: Text(
                    _address,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      height: 1.15,
                    ),
                  ),
                ),

                SizedBox(width: 4.w),

                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.white,
                  size: 22.sp,
                ),
              ],
            ),
          ),
        ),

        SizedBox(width: 12.w),

        _CircleIconButton(icon: Icons.account_balance_wallet),

        SizedBox(width: 10.w),

        _CircleIconButton(icon: Icons.person),
      ],
    );
  }
}

// =============================================================================
// SEARCH BAR FIELD
// =============================================================================
// CHANGED: the field now uses the shared SearchStore controller, so typing here
// shows results on the Home screen (and the same text is on the Search screen).
// The mic icon turns into an X while there is text, to clear it.
// =============================================================================

class _SearchBarField extends StatelessWidget {
  final double searchBarHeight;

  const _SearchBarField({required this.searchBarHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: searchBarHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(26.r),
      ),
      child: Row(
        children: [
          SizedBox(width: 16.w),

          Icon(Icons.search, color: Colors.grey.shade600, size: 24.sp),

          SizedBox(width: 10.w),

          Expanded(
            child: TextField(
              controller: SearchStore.controller,
              onChanged: SearchStore.setQuery,
              textInputAction: TextInputAction.search,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: 'Search for restaurants, cuisines, dishes...',
                hintStyle: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 14.sp,
                ),
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
              style: TextStyle(fontSize: 14.sp),
            ),
          ),

          ValueListenableBuilder<String>(
            valueListenable: SearchStore.query,
            builder: (context, q, _) {
              if (q.isEmpty) {
                return Icon(
                  Icons.mic_none_rounded,
                  color: kBrandRed,
                  size: 24.sp,
                );
              }

              return GestureDetector(
                onTap: SearchStore.clear,
                behavior: HitTestBehavior.opaque,
                child: Icon(
                  Icons.close_rounded,
                  color: Colors.grey.shade600,
                  size: 22.sp,
                ),
              );
            },
          ),

          SizedBox(width: 16.w),
        ],
      ),
    );
  }
}

// =============================================================================
// TOP HEADER
// =============================================================================
// NOTE: no longer used by the Profile tab (see _buildOtherTabsView above) —
// left in place in case another screen still relies on it.
// =============================================================================

class TopHeader extends StatelessWidget {
  const TopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0.3, -0.6),
            radius: 1.3,
            colors: [kBrandRedLight, kBrandRedLight, kBrandRedLight],
            stops: [0.0, 0.55, 1.0],
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _HeaderLocationRow(),

                SizedBox(height: 18.h),

                _SearchBarField(searchBarHeight: 47.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// =============================================================================
// CIRCULAR ICON BUTTON
// =============================================================================

class _CircleIconButton extends StatelessWidget {
  final IconData icon;

  const _CircleIconButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42.w,
      height: 42.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.18),
        border: Border.all(color: Colors.white.withOpacity(0.35), width: 1.w),
      ),
      child: Icon(icon, color: Colors.white, size: 20.sp),
    );
  }
}

// =============================================================================
// CATEGORY ROW
// =============================================================================

class CategoryRow extends StatefulWidget {
  const CategoryRow({super.key});

  @override
  State<CategoryRow> createState() => _CategoryRowState();
}

class _CategoryRowState extends State<CategoryRow> {
  int _selectedIndex = 0;

  static const List<_CategoryData> _categories = [
    _CategoryData(icon: Icons.grid_view_rounded, label: 'All'),
    _CategoryData(icon: Icons.percent_rounded, label: 'Offers'),
    _CategoryData(icon: Icons.ramen_dining_rounded, label: 'Biryani'),
    _CategoryData(icon: Icons.local_pizza_rounded, label: 'Pizza'),
    _CategoryData(icon: Icons.lunch_dining_rounded, label: 'Burgers'),
    _CategoryData(icon: Icons.more_horiz_rounded, label: 'More'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Row(
          children: List.generate(_categories.length, (index) {
            final bool selected = index == _selectedIndex;

            final item = _categories[index];

            return GestureDetector(
              onTap: () => setState(() => _selectedIndex = index),
              behavior: HitTestBehavior.opaque,
              child: Padding(
                padding: EdgeInsets.only(right: 18.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 45.w,
                      height: 45.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: selected ? kBrandRed : Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 8.r,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Icon(
                        item.icon,
                        color: selected ? Colors.white : kBrandRed,
                        size: 26.sp,
                      ),
                    ),

                    SizedBox(height: 3.h),

                    Text(
                      item.label,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: selected
                            ? FontWeight.w700
                            : FontWeight.w500,
                        color: selected ? kBrandRed : Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class _CategoryData {
  final IconData icon;
  final String label;

  const _CategoryData({required this.icon, required this.label});
}

// =============================================================================
// PROMO BANNER DATA
// =============================================================================

class _BannerData {
  final String badge;
  final String title;
  final String subtitle;
  final IconData icon1;
  final IconData icon2;

  const _BannerData({
    required this.badge,
    required this.title,
    required this.subtitle,
    required this.icon1,
    required this.icon2,
  });
}

// =============================================================================
// PROMO BANNER CAROUSEL
// =============================================================================

class PromoBannerCarousel extends StatefulWidget {
  const PromoBannerCarousel({super.key});

  @override
  State<PromoBannerCarousel> createState() => _PromoBannerCarouselState();
}

class _PromoBannerCarouselState extends State<PromoBannerCarousel> {
  final PageController _pageController = PageController(viewportFraction: 1);

  int _currentPage = 0;

  static const List<_BannerData> _banners = [
    _BannerData(
      badge: 'LIMITED TIME ONLY',
      title: '50% OFF',
      subtitle: 'ON YOUR FIRST ORDER',
      icon1: Icons.local_pizza_rounded,
      icon2: Icons.lunch_dining_rounded,
    ),
    _BannerData(
      badge: 'THIS WEEKEND ONLY',
      title: 'FREE DELIVERY',
      subtitle: 'ON ORDERS ABOVE \$20',
      icon1: Icons.delivery_dining_rounded,
      icon2: Icons.fastfood_rounded,
    ),
    _BannerData(
      badge: 'ENDS SOON',
      title: '30% OFF',
      subtitle: 'ON WEEKEND ORDERS',
      icon1: Icons.ramen_dining_rounded,
      icon2: Icons.set_meal_rounded,
    ),
    _BannerData(
      badge: 'TODAY ONLY',
      title: 'BUY 1 GET 1',
      subtitle: 'ON SELECT PIZZAS',
      icon1: Icons.local_pizza_rounded,
      icon2: Icons.local_fire_department_rounded,
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  double measureMaxBannerHeight(BuildContext context, double cardWidth) {
    final double innerWidth = (cardWidth - (20.w * 2)).clamp(
      40.0,
      double.infinity,
    );

    final double badgeTextWidth = (innerWidth - 14.w - 6.w).clamp(
      40.0,
      double.infinity,
    );

    double maxHeight = 0;

    for (final banner in _banners) {
      final double badgeTextHeight = measureTextHeight(
        context,
        text: banner.badge,
        style: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
        ),
        maxWidth: badgeTextWidth,
        maxLines: 1,
      );

      final double badgeIconSize = 14.sp;

      final double badgeRowHeight = badgeTextHeight > badgeIconSize
          ? badgeTextHeight
          : badgeIconSize;

      final double titleHeight = measureTextHeight(
        context,
        text: banner.title,
        style: TextStyle(
          fontSize: 28.sp,
          fontWeight: FontWeight.w800,
          height: 1.0,
        ),
        maxWidth: innerWidth,
        maxLines: 1,
      );

      final double subtitleHeight = measureTextHeight(
        context,
        text: banner.subtitle,
        style: TextStyle(
          fontSize: 13.sp,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.3,
        ),
        maxWidth: innerWidth,
        maxLines: 1,
      );

      final double buttonTextHeight = measureTextHeight(
        context,
        text: 'Order Now',
        style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w700),
        maxWidth: innerWidth,
        maxLines: 1,
      );

      final double buttonIconSize = 15.sp;

      final double buttonRowHeight = buttonTextHeight > buttonIconSize
          ? buttonTextHeight
          : buttonIconSize;

      final double buttonHeight = buttonRowHeight + (10.h * 2);

      final double contentHeight =
          badgeRowHeight +
          6.h +
          titleHeight +
          4.h +
          subtitleHeight +
          14.h +
          buttonHeight;

      if (contentHeight > maxHeight) {
        maxHeight = contentHeight;
      }
    }

    return maxHeight + (20.h * 2) + 30;
  }

  @override
  Widget build(BuildContext context) {
    final double cardWidth = MediaQuery.sizeOf(context).width - (10.w * 2);

    final double bannerHeight = cardWidth / kBannerAspectRatio;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: bannerHeight,
          child: PageView.builder(
            controller: _pageController,
            itemCount: _banners.length,
            clipBehavior: Clip.none,
            onPageChanged: (index) {
              setState(() => _currentPage = index);
            },
            itemBuilder: (context, index) {
              return AnimatedBuilder(
                animation: _pageController,
                builder: (context, child) {
                  double pageOffset = index.toDouble();

                  if (_pageController.position.haveDimensions) {
                    pageOffset =
                        (_pageController.page ?? _currentPage.toDouble()) -
                        index;
                  } else {
                    pageOffset = (_currentPage - index).toDouble();
                  }

                  final double distance = pageOffset.abs().clamp(0.0, 0.0);

                  final double itemScale = 1 - (distance * 0.10);

                  final double opacity = 1 - (distance * 0.50);

                  return Center(
                    child: Opacity(
                      opacity: opacity,
                      child: Transform.scale(scale: itemScale, child: child),
                    ),
                  );
                },
                child: _PromoBannerCard(data: _banners[index]),
              );
            },
          ),
        ),

        SizedBox(height: 10.h),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(_banners.length, (index) {
            final bool active = index == _currentPage;

            return AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInOut,
              margin: EdgeInsets.symmetric(horizontal: 3.w),
              width: active ? 18.w : 6.w,
              height: 6.h,
              decoration: BoxDecoration(
                color: active ? kBrandRed : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(4.r),
              ),
            );
          }),
        ),
      ],
    );
  }
}

// =============================================================================
// PROMO BANNER CARD
// =============================================================================
// ONLY CHANGE IN THIS FILE: the banner now shows assets/slider.png on the
// right. Its size is a percentage of the card width, so it looks the same
// proportionally on every phone. Title / subtitle use FittedBox(scaleDown) so
// they shrink slightly instead of being cut off when the image takes space.
// =============================================================================
// Width ÷ height of slider.png in pixels (e.g. 1000x500 -> 2.0, 900x400 -> 2.25)
const double kBannerAspectRatio = 2.5;

class _PromoBannerCard extends StatelessWidget {
  final _BannerData data;

  const _PromoBannerCard({required this.data});

  @override
  Widget build(BuildContext context) {
    // Decode the picture at screen size instead of full size (smoother scroll).
    final int bannerCacheWidth =
        (MediaQuery.sizeOf(context).width *
                MediaQuery.devicePixelRatioOf(context))
            .round();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        boxShadow: [
          BoxShadow(
            color: kBrandRed.withOpacity(0.35),
            blurRadius: 16.r,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22.r),
        child: AspectRatio(
          aspectRatio: kBannerAspectRatio,
          child: Image.asset(
            'assets/slider.png',
            fit: BoxFit.cover,
            cacheWidth: bannerCacheWidth,
            errorBuilder: (_, __, ___) => Container(
              color: kBrandRed,
              alignment: Alignment.center,
              child: Icon(
                data.icon1,
                color: Colors.white.withOpacity(0.85),
                size: 56.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// =============================================================================
// TOP PICKS DATA
// =============================================================================

class _TopPickData {
  final String image;
  final String name;
  final String rating;
  final String time;
  final String price;

  const _TopPickData({
    required this.image,
    required this.name,
    required this.rating,
    required this.time,
    required this.price,
  });
}

// =============================================================================
// TOP PICKS SECTION
// =============================================================================

class TopPicksSection extends StatelessWidget {
  const TopPicksSection({super.key});

  static const List<_TopPickData> _items = [
    _TopPickData(
      image: 'assets/biryani.png',
      name: 'Biryani House',
      rating: '4.6',
      time: '30 mins',
      price: '₹199 for one',
    ),
    _TopPickData(
      image: 'assets/pizza.png',
      name: 'Pizza Palace',
      rating: '4.5',
      time: '25 mins',
      price: '₹149 for one',
    ),
    _TopPickData(
      image: 'assets/noodles.png',
      name: 'Spice Corner',
      rating: '4.4',
      time: '30 mins',
      price: '₹199 for one',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Picks Near You',
                style: TextStyle(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87,
                ),
              ),

              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                      'See all',
                      style: TextStyle(
                        color: kBrandRed,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    SizedBox(width: 4.w),

                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: kBrandRed,
                      size: 14.sp,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 10.h),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(_items.length, (index) {
              return Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: _TopPickCard(data: _items[index]),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

// =============================================================================
// TOP PICK CARD
// =============================================================================
// ONLY CHANGE HERE:
// Tapping the card now opens RestaurantScreen.
// =============================================================================

class _TopPickCard extends StatelessWidget {
  final _TopPickData data;

  const _TopPickCard({required this.data});

  void _openRestaurant(BuildContext context) {
    String categories;

    if (data.name == 'Biryani House') {
      categories = 'Biryani  •  North Indian  •  Mughlai';
    } else if (data.name == 'Pizza Palace') {
      categories = 'Pizza  •  Italian  •  Fast Food';
    } else {
      categories = 'Chinese  •  Asian  •  Fast Food';
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => RestaurantScreen(
          restaurantName: data.name,
          heroImage: data.image,
          rating: data.rating,
          reviewCount: '12.8K',
          deliveryTime: data.time,
          deliveryFee: '₹19 delivery fee',
          categories: categories,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Decode the picture at the size it is shown (smoother scroll).
    final int imageCacheWidth =
        (MediaQuery.sizeOf(context).width /
                3 *
                MediaQuery.devicePixelRatioOf(context))
            .round();

    return GestureDetector(
      onTap: () => _openRestaurant(context),
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 12.r,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      data.image,
                      fit: BoxFit.cover,
                      cacheWidth: imageCacheWidth,
                    ),
                  ),

                  Positioned(
                    top: 8.h,
                    right: 8.w,
                    child: Container(
                      width: 26.w,
                      height: 26.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.12),
                            blurRadius: 6.r,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.favorite_border_rounded,
                        color: kBrandRed,
                        size: 16.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(8.w, 8.h, 8.w, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      data.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black87,
                      ),
                    ),
                  ),

                  Icon(Icons.star_rounded, color: kBrandRed, size: 14.sp),

                  SizedBox(width: 2.w),

                  Text(
                    data.rating,
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(8.w, 4.h, 8.w, 10.h),
              child: Text(
                '${data.time} • ${data.price}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 10.5.sp,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// WHAT'S ON YOUR MIND DATA
// =============================================================================

class _MindItemData {
  final String image;
  final String label;

  const _MindItemData({required this.image, required this.label});
}

// =============================================================================
// WHAT'S ON YOUR MIND SECTION
// =============================================================================

class WhatsOnYourMindSection extends StatelessWidget {
  const WhatsOnYourMindSection({super.key});

  static const List<_MindItemData> _items = [
    _MindItemData(image: 'assets/biryani.png', label: 'Biryani'),
    _MindItemData(image: 'assets/pizza.png', label: 'Pizza'),
    _MindItemData(image: 'assets/burgers.png', label: 'Burgers'),
    _MindItemData(image: 'assets/thai.png', label: 'Thai'),
    _MindItemData(image: 'assets/rolls.png', label: 'Rolls'),
    _MindItemData(image: 'assets/desserts.png', label: 'Desserts'),
  ];

  @override
  Widget build(BuildContext context) {
    // Decode the pictures at the size they are shown (smoother scroll).
    final int imageCacheWidth = (68.w * MediaQuery.devicePixelRatioOf(context))
        .round();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            "What's on your mind?",
            style: TextStyle(
              fontSize: 19.sp,
              fontWeight: FontWeight.w800,
              color: Colors.black87,
            ),
          ),
        ),

        SizedBox(height: 14.h),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: List.generate(_items.length, (index) {
              final item = _items[index];

              return Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 68.w,
                      height: 68.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.10),
                            blurRadius: 10.r,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        item.image,
                        fit: BoxFit.cover,
                        cacheWidth: imageCacheWidth,
                      ),
                    ),

                    SizedBox(height: 6.h),

                    Text(
                      item.label,
                      style: TextStyle(
                        fontSize: 12.5.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

// =============================================================================
// CUSTOM BOTTOM NAV BAR
// =============================================================================

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final int cartCount;
  final ValueChanged<int> onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    this.cartCount = 0,
  });

  static const List<_NavItemData> _items = [
    _NavItemData(icon: Icons.home_rounded, label: 'Home'),
    _NavItemData(icon: Icons.search_rounded, label: 'Search'),
    _NavItemData(icon: Icons.shopping_bag_outlined, label: 'Orders'),
    _NavItemData(icon: Icons.shopping_cart_outlined, label: 'Cart'),
    _NavItemData(icon: Icons.person_outline_rounded, label: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 1.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.10),
            blurRadius: 18.r,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: SizedBox(
        height: 50.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(_items.length, (index) {
            final bool active = index == currentIndex;

            final item = _items[index];

            return Expanded(
              child: GestureDetector(
                onTap: () => onTap(index),
                behavior: HitTestBehavior.opaque,
                child: Center(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: 70.w,
                    height: 49.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 5.h,
                    ),
                    decoration: BoxDecoration(
                      color: active
                          ? kBrandRed.withOpacity(0.12)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Icon(
                                item.icon,
                                color: active
                                    ? kBrandRed
                                    : Colors.grey.shade600,
                                size: 18.sp,
                              ),

                              if (item.label == 'Cart' && cartCount > 0)
                                Positioned(
                                  right: -6.w,
                                  top: -6.h,
                                  child: Container(
                                    padding: EdgeInsets.all(2.w),
                                    decoration: const BoxDecoration(
                                      color: kBrandRed,
                                      shape: BoxShape.circle,
                                    ),
                                    constraints: BoxConstraints(
                                      minWidth: 16.w,
                                      minHeight: 16.w,
                                    ),
                                    child: Text(
                                      '$cartCount',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),

                          SizedBox(height: 1.h),

                          Text(
                            item.label,
                            maxLines: 1,
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: active
                                  ? FontWeight.w700
                                  : FontWeight.w500,
                              color: active ? kBrandRed : Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

// =============================================================================
// FREE DELIVERY BANNER
// =============================================================================

class FreeDeliveryBanner extends StatelessWidget {
  const FreeDeliveryBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [kBrandRedLight, kBrandRed, kBrandRedDark],
        ),
        boxShadow: [
          BoxShadow(
            color: kBrandRed.withOpacity(0.35),
            blurRadius: 16.r,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'FREE DELIVERY',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w800,
                    height: 1.0,
                  ),
                ),

                SizedBox(height: 6.h),

                Text(
                  'On orders above ₹199',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.95),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: 14.h),

                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 18.w,
                      vertical: 10.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Order Now',
                          style: TextStyle(
                            color: kBrandRed,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        SizedBox(width: 6.w),

                        Icon(
                          Icons.arrow_forward_rounded,
                          color: kBrandRed,
                          size: 15.sp,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(width: 20.w),

          Icon(Icons.delivery_dining_rounded, color: Colors.white, size: 72.sp),
        ],
      ),
    );
  }
}

// =============================================================================
// NAV ITEM DATA
// =============================================================================

class _NavItemData {
  final String label;
  final IconData icon;

  const _NavItemData({required this.icon, required this.label});
}
