import 'package:deleivery_app/home/resturantScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// =============================================================================
// SEARCH  (shared by the Home search bar and the Search screen)
// =============================================================================
// 1. SearchStore       -> ONE shared text controller + query, so whatever the
//                         user types in either search bar is the same search.
// 2. SearchItem/Catalog-> the list that gets searched. The items below are
//                         SAMPLE data: replace SearchCatalog.items with your
//                         real restaurants / dishes (or an API call).
// 3. SearchResultsView -> the list of matching results (with the typed text
//                         highlighted). Tapping a result opens RestaurantScreen.
// =============================================================================

const Color _searchRed = Color(0xFFD33220);

// -----------------------------------------------------------------------------
// STORE
// -----------------------------------------------------------------------------

class SearchStore {
  SearchStore._();

  /// Use this as the `controller` of EVERY search TextField.
  static final TextEditingController controller = TextEditingController();

  /// What the user has typed. Listen to this to show / hide results.
  static final ValueNotifier<String> query = ValueNotifier<String>('');

  static void setQuery(String value) {
    query.value = value;
  }

  static void clear() {
    controller.clear();
    query.value = '';
  }
}

// -----------------------------------------------------------------------------
// MODEL + CATALOG  (sample data - replace with your own)
// -----------------------------------------------------------------------------

class SearchItem {
  final String name;
  final String image;
  final String rating;
  final String time;
  final String price;
  final List<String> tags;

  const SearchItem({
    required this.name,
    required this.image,
    required this.rating,
    required this.time,
    required this.price,
    required this.tags,
  });
}

class SearchCatalog {
  SearchCatalog._();

  static const List<SearchItem> items = [
    SearchItem(
      name: 'Biryani House',
      image: 'assets/biryani.png',
      rating: '4.6',
      time: '30 mins',
      price: '₹199 for one',
      tags: ['Biryani', 'North Indian', 'Mughlai'],
    ),
    SearchItem(
      name: 'Pizza Palace',
      image: 'assets/pizza.png',
      rating: '4.5',
      time: '25 mins',
      price: '₹149 for one',
      tags: ['Pizza', 'Italian', 'Fast Food'],
    ),
    SearchItem(
      name: 'Spice Corner',
      image: 'assets/noodles.png',
      rating: '4.4',
      time: '30 mins',
      price: '₹199 for one',
      tags: ['Chinese', 'Noodles', 'Asian', 'Fast Food'],
    ),
    SearchItem(
      name: 'Burger House',
      image: 'assets/burgers.png',
      rating: '4.3',
      time: '20 mins',
      price: '₹129 for one',
      tags: ['Burgers', 'Fries', 'Fast Food'],
    ),
    SearchItem(
      name: 'Thai Orchid',
      image: 'assets/thai.png',
      rating: '4.5',
      time: '35 mins',
      price: '₹249 for one',
      tags: ['Thai', 'Asian', 'Curry'],
    ),
    SearchItem(
      name: 'Roll Junction',
      image: 'assets/rolls.png',
      rating: '4.2',
      time: '25 mins',
      price: '₹99 for one',
      tags: ['Rolls', 'Wraps', 'Street Food'],
    ),
    SearchItem(
      name: 'Sweet Tooth',
      image: 'assets/desserts.png',
      rating: '4.7',
      time: '20 mins',
      price: '₹149 for one',
      tags: ['Desserts', 'Ice Cream', 'Cakes'],
    ),
  ];

  /// Returns matching items, best matches first.
  /// Order: name starts with query -> name contains -> a tag starts with ->
  /// a tag contains. Ties are sorted by rating.
  static List<SearchItem> search(String rawQuery) {
    final String q = rawQuery.trim().toLowerCase();
    if (q.isEmpty) return [];

    final List<MapEntry<SearchItem, int>> scored = [];

    for (final item in items) {
      final String name = item.name.toLowerCase();
      final List<String> tags = item.tags.map((t) => t.toLowerCase()).toList();

      int? score;

      if (name.startsWith(q)) {
        score = 0;
      } else if (name.contains(q)) {
        score = 1;
      } else if (tags.any((t) => t.startsWith(q))) {
        score = 2;
      } else if (tags.any((t) => t.contains(q))) {
        score = 3;
      }

      if (score != null) scored.add(MapEntry(item, score));
    }

    scored.sort((a, b) {
      final int byScore = a.value.compareTo(b.value);
      if (byScore != 0) return byScore;
      return (double.tryParse(b.key.rating) ?? 0).compareTo(
        double.tryParse(a.key.rating) ?? 0,
      );
    });

    return scored.map((e) => e.key).toList();
  }
}

// -----------------------------------------------------------------------------
// RESULTS VIEW
// -----------------------------------------------------------------------------
// This is a plain Column (NOT a scrolling list), so you can drop it inside any
// scroll view: a sliver on Home, or a SingleChildScrollView on Search.
// -----------------------------------------------------------------------------

class SearchResultsView extends StatelessWidget {
  final String query;

  const SearchResultsView({super.key, required this.query});

  @override
  Widget build(BuildContext context) {
    final List<SearchItem> results = SearchCatalog.search(query);

    if (results.isEmpty) {
      return _buildEmptyState();
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 6.h, bottom: 10.h),
            child: Text(
              results.length == 1
                  ? '1 result for "${query.trim()}"'
                  : '${results.length} results for "${query.trim()}"',
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w700,
                color: Colors.grey.shade700,
              ),
            ),
          ),
          for (final item in results)
            _SearchResultCard(item: item, query: query.trim()),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Padding(
      padding: EdgeInsets.fromLTRB(32.w, 60.h, 32.w, 0),
      child: Column(
        children: [
          Icon(Icons.search_off_rounded, size: 56.sp, color: Colors.grey),
          SizedBox(height: 12.h),
          Text(
            'No results for "${query.trim()}"',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w800,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            'Try searching for biryani, pizza or burgers.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12.sp, color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// ONE RESULT CARD
// -----------------------------------------------------------------------------

class _SearchResultCard extends StatelessWidget {
  final SearchItem item;
  final String query;

  const _SearchResultCard({required this.item, required this.query});

  void _open(BuildContext context) {
    FocusScope.of(context).unfocus();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => RestaurantScreen(
          restaurantName: item.name,
          heroImage: item.image,
          rating: item.rating,
          reviewCount: '12.8K',
          deliveryTime: item.time,
          deliveryFee: '₹19 delivery fee',
          categories: item.tags.join('  •  '),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _open(context),
      behavior: HitTestBehavior.opaque,
      child: Container(
        margin: EdgeInsets.only(bottom: 10.h),
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.06), blurRadius: 10.r),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(
                item.image,
                width: 64.w,
                height: 64.w,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  width: 64.w,
                  height: 64.w,
                  color: _searchRed.withOpacity(0.08),
                  child: Icon(
                    Icons.restaurant_rounded,
                    color: _searchRed,
                    size: 26.sp,
                  ),
                ),
              ),
            ),

            SizedBox(width: 12.w),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _highlighted(
                    item.name,
                    TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w800,
                      color: Colors.black87,
                    ),
                  ),

                  SizedBox(height: 2.h),

                  _highlighted(
                    item.tags.join('  •  '),
                    TextStyle(fontSize: 11.sp, color: Colors.grey.shade600),
                  ),

                  SizedBox(height: 5.h),

                  Row(
                    children: [
                      Icon(Icons.star_rounded, color: _searchRed, size: 14.sp),
                      SizedBox(width: 2.w),
                      Text(
                        item.rating,
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(width: 6.w),
                      Expanded(
                        child: Text(
                          '${item.time} • ${item.price}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                    ],
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

  /// Draws the text with the part the user typed shown in red + bold.
  Widget _highlighted(String text, TextStyle base) {
    final int index = text.toLowerCase().indexOf(query.toLowerCase());

    if (index < 0 || query.isEmpty) {
      return Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: base,
      );
    }

    final int end = index + query.length;

    return Text.rich(
      TextSpan(
        style: base,
        children: [
          TextSpan(text: text.substring(0, index)),
          TextSpan(
            text: text.substring(index, end),
            style: base.copyWith(
              color: _searchRed,
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(text: text.substring(end)),
        ],
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
