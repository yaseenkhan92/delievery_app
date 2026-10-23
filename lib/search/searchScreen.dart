import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home/homescreen.dart' show kBrandRed, kBrandRedLight;
import 'search.dart';

class SearchScreen extends StatefulWidget {
  // Called whenever the scroll direction changes — true to show the
  // bottom bar, false to hide it. HomeScreen wires this to the same
  // ValueNotifier the Home tab's own scroll already drives, so both tabs
  // animate the bottom bar identically.
  final ValueChanged<bool>? onScrollDirectionChanged;

  const SearchScreen({super.key, this.onScrollDirectionChanged});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final ScrollController _scrollController = ScrollController();
  double _lastOffset = 0;
  bool _barVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  // Same delta-based show/hide logic as HomeScreen._onScroll — scrolling
  // down hides the bottom bar, scrolling up (or hitting the very top)
  // shows it again.
  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final double currentOffset = _scrollController.position.pixels;
    final double delta = currentOffset - _lastOffset;
    if (delta.abs() < 6) return;

    final bool scrollingDown = delta > 0;
    if (scrollingDown && _barVisible) {
      _barVisible = false;
      widget.onScrollDirectionChanged?.call(false);
    } else if (!scrollingDown && !_barVisible) {
      _barVisible = true;
      widget.onScrollDirectionChanged?.call(true);
    }
    if (currentOffset <= 0 && !_barVisible) {
      _barVisible = true;
      widget.onScrollDirectionChanged?.call(true);
    }
    _lastOffset = currentOffset;
  }

  @override
  Widget build(BuildContext context) {
    // titleBoxHeight explicitly accounts for the status bar inset.
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double titleContentHeight = 26.sp + 4.h + 18.sp;
    final double titleBoxHeight =
        statusBarHeight + 12.h + titleContentHeight + 16.h;
    final double searchBarBoxHeight = (12.h * 2) + 47.h;

    return CustomScrollView(
      controller: _scrollController,
      physics: const BouncingScrollPhysics(),
      slivers: [
        // ===================================================================
        // COLLAPSING HEADER — "Search" title/subtitle scrolls away, the
        // search field itself stays pinned at the top while scrolling.
        // ===================================================================
        SliverAppBar(
          pinned: true,
          floating: false,
          // FIXED: primary is explicitly false so this SliverAppBar never
          // relies on the implicit SafeArea/topPadding consumption that
          // only happens when primary resolves to true. That implicit
          // behavior is context-dependent (breaks if this screen is ever
          // nested differently), so we now add statusBarHeight ourselves
          // below instead of trusting the framework to do it for us.
          primary: false,
          toolbarHeight: 0,
          automaticallyImplyLeading: false,
          backgroundColor: kBrandRedLight,
          elevation: 0,
          scrolledUnderElevation: 0,
          expandedHeight: titleBoxHeight + searchBarBoxHeight,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment(0.3, -0.6),
                  radius: 1.3,
                  colors: [kBrandRedLight, kBrandRedLight, kBrandRedLight],
                  stops: [0.0, 0.55, 1.0],
                ),
              ),
              child: Padding(
                // FIXED: statusBarHeight is now added explicitly here
                // since primary:false means SliverAppBar no longer
                // consumes it for us automatically.
                padding: EdgeInsets.fromLTRB(
                  13.w,
                  statusBarHeight + 1.h,
                  16.w,
                  65.h,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Search',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w800,
                              height: 1.1,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            'Find restaurants, cuisines & dishes',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 12.w),
                    const _LocationIconButton(),
                  ],
                ),
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(searchBarBoxHeight),
            child: Container(
              width: double.infinity,
              color: kBrandRedLight,
              padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 12.h),
              child: _SearchInputField(height: 47.h),
            ),
          ),
        ),

        // ===================================================================
        // REST OF CONTENT
        // ===================================================================
        SliverToBoxAdapter(
          child: ValueListenableBuilder<String>(
            valueListenable: SearchStore.query,
            builder: (context, query, _) {
              final String searchQuery = query.trim();

              if (searchQuery.isEmpty) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
                    const _FilterChipsRow(),
                    SizedBox(height: 8.h),
                    const _RecentSearchesSection(),
                    SizedBox(height: 20.h),
                    const _TrendingNearYouSection(),
                    SizedBox(height: 24.h),
                    const _PopularRestaurantsSection(),
                    SizedBox(height: 24.h),
                    const _PopularDishesSection(),
                    SizedBox(height: 24.h),
                  ],
                );
              }

              return Padding(
                padding: EdgeInsets.only(top: 10.h, bottom: 100.h),
                child: SearchResultsView(query: searchQuery),
              );
            },
          ),
        ),
      ],
    );
  }
}

// =============================================================================
// LOCATION ICON BUTTON
// =============================================================================

class _LocationIconButton extends StatelessWidget {
  const _LocationIconButton();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 44.w,
        height: 44.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: kBrandRed,
        ),
        child: Icon(
          Icons.location_on_rounded,
          color: Colors.white,
          size: 22.sp,
        ),
      ),
    );
  }
}

// =============================================================================
// SEARCH INPUT FIELD
// =============================================================================

class _SearchInputField extends StatelessWidget {
  final double height;

  const _SearchInputField({required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
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
              autofocus: true,
              onChanged: SearchStore.setQuery,
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
            builder: (context, query, _) {
              if (query.isEmpty) {
                return Icon(
                  Icons.mic_none_rounded,
                  color: kBrandRed,
                  size: 24.sp,
                );
              }

              return GestureDetector(
                onTap: SearchStore.clear,
                behavior: HitTestBehavior.opaque,
                child: Padding(
                  padding: EdgeInsets.all(4.w),
                  child: Icon(
                    Icons.close_rounded,
                    color: Colors.grey.shade600,
                    size: 22.sp,
                  ),
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
// FILTER CHIPS DATA
// =============================================================================

class _FilterChipData {
  final IconData icon;
  final Color iconColor;
  final String label;

  const _FilterChipData({
    required this.icon,
    required this.iconColor,
    required this.label,
  });
}

// =============================================================================
// FILTER CHIPS ROW
// =============================================================================

class _FilterChipsRow extends StatelessWidget {
  const _FilterChipsRow();

  static const List<_FilterChipData> _chips = [
    _FilterChipData(
      icon: Icons.flash_on_rounded,
      iconColor: Color(0xFFF5A623),
      label: 'Fast Delivery',
    ),
    _FilterChipData(
      icon: Icons.local_offer_outlined,
      iconColor: kBrandRed,
      label: 'Offers',
    ),
    _FilterChipData(
      icon: Icons.star_rounded,
      iconColor: kBrandRed,
      label: 'Top Rated',
    ),
    _FilterChipData(
      icon: Icons.access_time_rounded,
      iconColor: kBrandRed,
      label: 'Under 30 min',
    ),
    _FilterChipData(
      icon: Icons.lunch_dining_rounded,
      iconColor: Color(0xFF8B5E34),
      label: 'Burgers',
    ),
    _FilterChipData(
      icon: Icons.local_pizza_rounded,
      iconColor: kBrandRed,
      label: 'Pizza',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: _chips.length,
        separatorBuilder: (context, index) => SizedBox(width: 10.w),
        itemBuilder: (context, index) {
          final item = _chips[index];
          return GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 10.r,
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(item.icon, color: item.iconColor, size: 16.sp),
                  SizedBox(width: 6.w),
                  Text(
                    item.label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12.5.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// =============================================================================
// RECENT SEARCHES DATA
// =============================================================================

class _RecentSearchData {
  final String title;
  final String subtitle;

  const _RecentSearchData({required this.title, required this.subtitle});
}

// =============================================================================
// RECENT SEARCHES SECTION
// =============================================================================

class _RecentSearchesSection extends StatelessWidget {
  const _RecentSearchesSection();

  static const List<_RecentSearchData> _items = [
    _RecentSearchData(
      title: 'Biryani near me',
      subtitle: 'Chicken Biryani, Hyderabadi Biryani',
    ),
    _RecentSearchData(
      title: 'Pizza',
      subtitle: "Domino's, La Pino'z Pizza, Pizza Hut",
    ),
    _RecentSearchData(
      title: 'Burger',
      subtitle: "McDonald's, Burger King, Wendy's",
    ),
    _RecentSearchData(
      title: 'South Indian',
      subtitle: 'Dosa, Idli, Filter Coffee',
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
                'Recent Searches',
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Clear All',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: kBrandRed,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 6.h),
        ...List.generate(_items.length, (index) {
          final item = _items[index];
          return _RecentSearchTile(data: item);
        }),
      ],
    );
  }
}

class _RecentSearchTile extends StatelessWidget {
  final _RecentSearchData data;

  const _RecentSearchTile({required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Row(
          children: [
            Container(
              width: 36.w,
              height: 36.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFFDE8E8),
              ),
              child: Icon(
                Icons.access_time_rounded,
                color: kBrandRed,
                size: 18.sp,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    data.subtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
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

// =============================================================================
// TRENDING NEAR YOU DATA
// =============================================================================

class _TrendingItemData {
  final String image;
  final String label;

  const _TrendingItemData({required this.image, required this.label});
}

// =============================================================================
// TRENDING NEAR YOU SECTION
// =============================================================================

class _TrendingNearYouSection extends StatelessWidget {
  const _TrendingNearYouSection();

  static const List<_TrendingItemData> _items = [
    _TrendingItemData(image: 'assets/biryani.png', label: 'Biryani House'),
    _TrendingItemData(image: 'assets/pizza.png', label: 'Pizza Palace'),
    _TrendingItemData(image: 'assets/noodles.png', label: 'Spice Corner'),
    _TrendingItemData(image: 'assets/burgers.png', label: 'Burger Hub'),
    _TrendingItemData(image: 'assets/desserts.png', label: 'Sweet Treats'),
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
                'Trending Near You',
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: kBrandRed,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        SizedBox(
          height: 110.w,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            itemCount: _items.length,
            separatorBuilder: (context, index) => SizedBox(width: 12.w),
            itemBuilder: (context, index) {
              final item = _items[index];
              return ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: Stack(
                  children: [
                    Image.asset(
                      item.image,
                      width: 130.w,
                      height: 110.w,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        width: 130.w,
                        height: 110.w,
                        color: Colors.grey.shade200,
                        child: Icon(
                          Icons.restaurant_rounded,
                          color: Colors.grey.shade400,
                          size: 28.sp,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8.w, 18.h, 8.w, 8.h),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(0.0),
                              Colors.black.withOpacity(0.65),
                            ],
                          ),
                        ),
                        child: Text(
                          item.label,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.5.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

// =============================================================================
// POPULAR RESTAURANTS DATA
// =============================================================================

class _PopularRestaurantData {
  final String image;
  final String discountBadge;
  final String name;
  final String rating;
  final String time;
  final String cuisine;
  final String price;

  const _PopularRestaurantData({
    required this.image,
    required this.discountBadge,
    required this.name,
    required this.rating,
    required this.time,
    required this.cuisine,
    required this.price,
  });
}

// =============================================================================
// POPULAR RESTAURANTS SECTION
// =============================================================================

class _PopularRestaurantsSection extends StatelessWidget {
  const _PopularRestaurantsSection();

  static const List<_PopularRestaurantData> _items = [
    _PopularRestaurantData(
      image: 'assets/biryani.png',
      discountBadge: '30% OFF',
      name: 'Biryani House',
      rating: '4.6',
      time: '25–35 min',
      cuisine: 'Biryani, North Indian',
      price: '₹199 for one',
    ),
    _PopularRestaurantData(
      image: 'assets/burgers.png',
      discountBadge: '20% OFF',
      name: 'Burger Barn',
      rating: '4.5',
      time: '20–30 min',
      cuisine: 'Burgers, Fast Food',
      price: '₹149 for one',
    ),
    _PopularRestaurantData(
      image: 'assets/pizza.png',
      discountBadge: '15% OFF',
      name: 'Pizza Palace',
      rating: '4.4',
      time: '25–35 min',
      cuisine: 'Pizza, Italian',
      price: '₹179 for one',
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
                'Popular Restaurants',
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: kBrandRed,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12.h),
        SizedBox(
          height: 240.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            itemCount: _items.length,
            separatorBuilder: (context, index) => SizedBox(width: 12.w),
            itemBuilder: (context, index) {
              return _PopularRestaurantTile(data: _items[index]);
            },
          ),
        ),
      ],
    );
  }
}

class _PopularRestaurantTile extends StatelessWidget {
  final _PopularRestaurantData data;

  const _PopularRestaurantTile({required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 220.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18.r),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 12.r),
          ],
        ),
        clipBehavior: Clip.none,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(18.r),
                  ),
                  child: Image.asset(
                    data.image,
                    width: 220.w,
                    height: 130.h,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      width: 220.w,
                      height: 130.h,
                      color: Colors.grey.shade200,
                      child: Icon(
                        Icons.restaurant_rounded,
                        color: Colors.grey.shade400,
                        size: 32.sp,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10.h,
                  left: 10.w,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 4.h,
                    ),
                    decoration: BoxDecoration(
                      color: kBrandRed,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Text(
                      data.discountBadge,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -12.h,
                  right: 12.w,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 4.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green.shade600,
                      borderRadius: BorderRadius.circular(6.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 6.r,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          data.rating,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.5.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Icon(
                          Icons.star_rounded,
                          color: Colors.white,
                          size: 12.sp,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12.w, 18.h, 12.w, 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    data.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14.5.sp,
                      fontWeight: FontWeight.w800,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_rounded,
                        size: 13.sp,
                        color: Colors.grey.shade600,
                      ),
                      SizedBox(width: 4.w),
                      Expanded(
                        child: Text(
                          '${data.time} • ${data.cuisine}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11.5.sp,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Icon(
                        Icons.local_fire_department_rounded,
                        size: 13.sp,
                        color: kBrandRed,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        data.price,
                        style: TextStyle(
                          fontSize: 11.5.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// POPULAR DISHES DATA
// =============================================================================

class _PopularDishData {
  final String image;
  final String name;
  final String rating;
  final String price;

  const _PopularDishData({
    required this.image,
    required this.name,
    required this.rating,
    required this.price,
  });
}

// =============================================================================
// POPULAR DISHES SECTION
// =============================================================================

class _PopularDishesSection extends StatelessWidget {
  const _PopularDishesSection();

  static const List<_PopularDishData> _items = [
    _PopularDishData(
      image: 'assets/paneer.png',
      name: 'Paneer Butter Masala',
      rating: '4.6',
      price: '₹189',
    ),
    _PopularDishData(
      image: 'assets/biryani.png',
      name: 'Chicken Biryani',
      rating: '4.6',
      price: '₹199',
    ),
    _PopularDishData(
      image: 'assets/pizza.png',
      name: 'Margherita Pizza',
      rating: '4.5',
      price: '₹249',
    ),
    _PopularDishData(
      image: 'assets/noodles.png',
      name: 'Veg Hakka Noodles',
      rating: '4.4',
      price: '₹179',
    ),
    _PopularDishData(
      image: 'assets/burgers.png',
      name: 'Chicken Burger',
      rating: '4.5',
      price: '₹149',
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
                'Popular Dishes',
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: kBrandRed,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12.h),
        SizedBox(
          height: 170.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            itemCount: _items.length,
            separatorBuilder: (context, index) => SizedBox(width: 12.w),
            itemBuilder: (context, index) {
              return _PopularDishTile(data: _items[index]);
            },
          ),
        ),
      ],
    );
  }
}

class _PopularDishTile extends StatelessWidget {
  final _PopularDishData data;

  const _PopularDishTile({required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 120.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 10.r),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
              child: Image.asset(
                data.image,
                width: 120.w,
                height: 100.w,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: 120.w,
                  height: 100.w,
                  color: Colors.grey.shade200,
                  child: Icon(
                    Icons.fastfood_rounded,
                    color: Colors.grey.shade400,
                    size: 26.sp,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8.w, 8.h, 8.w, 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    data.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        size: 13.sp,
                        color: Colors.green.shade600,
                      ),
                      SizedBox(width: 2.w),
                      Text(
                        data.rating,
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.green.shade700,
                        ),
                      ),
                      SizedBox(width: 6.w),
                      Text(
                        data.price,
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
