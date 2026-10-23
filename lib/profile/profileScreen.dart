import 'package:deleivery_app/api/baseapi.dart'; // ApiException
import 'package:deleivery_app/api/loginapi.dart';
import 'package:deleivery_app/api/profileapi.dart';
import 'package:deleivery_app/api/tokenstorage.dart';
import 'package:deleivery_app/auth/guest/guest_Session.dart';
// TODO: fix these two paths if your files live somewhere else.

import 'package:deleivery_app/auth/signinScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// =============================================================================
// COLORS
// =============================================================================

const Color kProfileRed = Color(0xFFD33220);
const Color kProfileRedDark = Color(0xFFBF2B1C);
const Color kProfileBackground = Color(0xFFF8F8F8);
const Color kProfileText = Color(0xFF202124);
const Color kProfileGrey = Color(0xFF777777);

// Soft pink used for cards / mascot circle (matches the design).
final Color kProfilePink = kProfileRed.withOpacity(0.06);

// Extra space at the bottom so content isn't hidden behind the floating
// bottom navigation bar.
const double kBottomNavSpace = 100;

// One horizontal page padding + one gap between side-by-side cards, used on
// EVERY section of every screen so widths always line up.
const double kPageHPad = 16;
const double kGap = 8;

// =============================================================================
// ASSETS  (put these PNGs in your assets/ folder and register in pubspec.yaml)
// =============================================================================
// assets/delivery_mascot.png  -> the cartoon delivery boy (transparent PNG)
// assets/hearts.png           -> the glossy 3D hearts (transparent PNG)
// If a file is missing, a fallback icon is shown instead of crashing.
// =============================================================================

// =============================================================================
// SCROLL BEHAVIOR
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
// USER MODEL  (built from the GET /consumer/whoami response)
// =============================================================================

class AuthUser {
  final String name;
  final String phone;
  final String email;

  /// Image URL from the server ('' when the user has no picture).
  final String avatar;
  final int orders;
  final int favourites;
  final int addresses;
  final int payments;
  final int rewardPoints;
  final int pointsToNextReward;

  const AuthUser({
    required this.name,
    required this.phone,
    required this.email,
    required this.avatar,
    required this.orders,
    required this.favourites,
    required this.addresses,
    required this.payments,
    required this.rewardPoints,
    required this.pointsToNextReward,
  });

  factory AuthUser.fromWhoami(Map<String, dynamic> j) {
    int toInt(dynamic v) => v is int ? v : (int.tryParse('$v') ?? 0);

    final first = (j['f_name'] ?? '').toString().trim();
    final last = (j['l_name'] ?? '').toString().trim();
    final fullName = '$first $last'.trim();

    final image = j['image'];

    return AuthUser(
      name: fullName.isEmpty ? 'My Account' : fullName,
      phone: (j['phone'] ?? '').toString(),
      email: (j['email'] ?? '').toString(),
      avatar: image is String && image.startsWith('http') ? image : '',
      orders: toInt(j['order_count']),
      // These three keys were not visible in the response you showed.
      // Rename them if the server uses different names (they show 0 until then).
      favourites: toInt(j['favourite_count']),
      addresses: toInt(j['address_count']),
      payments: toInt(j['payment_count']),
      rewardPoints: toInt(j['loyalty_point']),
      pointsToNextReward: 1000, // TODO: use the server value if it sends one
    );
  }
}

// =============================================================================
// AUTH STORE  (holds the profile that the screen shows)
// =============================================================================

class AuthStore {
  AuthStore._();

  static final AuthStore instance = AuthStore._();

  final ValueNotifier<AuthUser?> currentUser = ValueNotifier<AuthUser?>(null);
  final ValueNotifier<bool> loading = ValueNotifier<bool>(false);
  final ValueNotifier<String?> error = ValueNotifier<String?>(null);

  /// Loads the profile from the server when a member token is saved.
  /// Guests (or no token) stay on the signed-out view.
  Future<void> loadFromServer() async {
    if (loading.value) return;

    if (GuestSession.isGuest) {
      currentUser.value = null;
      error.value = null;
      return;
    }

    final token = await TokenStorage.read();
    if (token == null || token.isEmpty) {
      currentUser.value = null;
      error.value = null;
      return;
    }

    loading.value = true;
    error.value = null;
    try {
      final data = await ProfileApi.whoami();
      currentUser.value = AuthUser.fromWhoami(data);
    } on ApiException catch (e) {
      if (e.statusCode == 401) {
        // Token expired / invalid -> log out locally.
        await LoginApi.logout();
        currentUser.value = null;
      } else {
        error.value = e.message;
      }
    } catch (_) {
      error.value = 'Something went wrong. Please try again.';
    } finally {
      loading.value = false;
    }
  }

  /// Log out: remove the saved token and clear the profile.
  Future<void> signOut() async {
    await LoginApi.logout();
    currentUser.value = null;
    error.value = null;
  }
}

// =============================================================================
// PROFILE SCREEN
// =============================================================================

class ProfileScreen extends StatefulWidget {
  /// Optional external ScrollController (HomeScreen passes its own tab
  /// controller in so Profile's scroll drives the bottom nav bar's
  /// hide/show animation exactly like the Home tab does).
  final ScrollController? scrollController;

  const ProfileScreen({super.key, this.scrollController});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    // Call GET /consumer/whoami once the screen is ready.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      AuthStore.instance.loadFromServer();
    });
  }

  @override
  Widget build(BuildContext context) {
    final store = AuthStore.instance;

    return Scaffold(
      backgroundColor: kProfileBackground,
      body: ValueListenableBuilder<bool>(
        valueListenable: store.loading,
        builder: (context, loading, _) {
          return ValueListenableBuilder<AuthUser?>(
            valueListenable: store.currentUser,
            builder: (context, user, _) {
              // Show the data as soon as we have it (even while refreshing).
              if (user != null) {
                return _SignedInProfile(
                  user: user,
                  controller: widget.scrollController,
                );
              }

              if (loading) {
                return const Center(
                  child: CircularProgressIndicator(color: kProfileRed),
                );
              }

              return ValueListenableBuilder<String?>(
                valueListenable: store.error,
                builder: (context, error, _) {
                  if (error != null) {
                    return _ErrorView(
                      message: error,
                      onRetry: store.loadFromServer,
                    );
                  }
                  return _SignedOutProfile(controller: widget.scrollController);
                },
              );
            },
          );
        },
      ),
    );
  }
}

// =============================================================================
// ERROR VIEW  (network / server error with a Retry button)
// =============================================================================

class _ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorView({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.cloud_off_rounded, color: kProfileRed, size: 48.sp),
            SizedBox(height: 12.h),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.sp, color: kProfileText),
            ),
            SizedBox(height: 16.h),
            ElevatedButton(
              onPressed: onRetry,
              style: ElevatedButton.styleFrom(
                backgroundColor: kProfileRed,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r),
                ),
              ),
              child: const Text('Retry', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// HEADER
// =============================================================================
// FIX: the Column now uses MainAxisSize.min, so the header is only as tall as
// its content (+ bottomPadding) instead of stretching to fill its parent.
// =============================================================================

class _ProfileHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final double bottomPadding;

  const _ProfileHeader({
    required this.title,
    required this.subtitle,
    required this.bottomPadding,
  });

  @override
  Widget build(BuildContext context) {
    final double topInset = MediaQuery.of(context).padding.top;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [kProfileRed, kProfileRedDark],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(28.r),
          bottomRight: Radius.circular(28.r),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          // 3D hearts image (falls back to two simple hearts if missing)
          Positioned(
            right: 8.w,
            top: topInset + 4.h,
            child: Image.asset(
              'assets/hearts.png',
              width: 110.w,
              fit: BoxFit.contain,
              errorBuilder: (_, __, ___) => SizedBox(
                width: 90.w,
                height: 70.h,
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Icon(
                        Icons.favorite_rounded,
                        color: Colors.white.withOpacity(0.85),
                        size: 46.sp,
                      ),
                    ),
                    Positioned(
                      right: 44.w,
                      top: 34.h,
                      child: Icon(
                        Icons.favorite_rounded,
                        color: Colors.white.withOpacity(0.55),
                        size: 26.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(
              20.w,
              topInset + 14.h,
              20.w,
              bottomPadding,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, // <-- the important fix
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.92),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
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
// HEADER + OVERLAPPING CARD
// =============================================================================
// The header sits at the top of the Stack and the card is pushed down with
// padding, so the card overlaps the header's bottom edge. The Stack height is
// decided by the card, so no fixed heights / magic numbers are needed.
// =============================================================================

class _HeaderWithCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final double headerBottomPadding;
  final double cardTopOffset;
  final Widget card;

  const _HeaderWithCard({
    required this.title,
    required this.subtitle,
    required this.headerBottomPadding,
    required this.cardTopOffset,
    required this.card,
  });

  @override
  Widget build(BuildContext context) {
    final double topInset = MediaQuery.of(context).padding.top;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        _ProfileHeader(
          title: title,
          subtitle: subtitle,
          bottomPadding: headerBottomPadding,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
            kPageHPad.w,
            topInset + cardTopOffset,
            kPageHPad.w,
            0,
          ),
          child: card,
        ),
      ],
    );
  }
}

// =============================================================================
// LOGGED OUT SCREEN
// =============================================================================

class _SignedOutProfile extends StatelessWidget {
  final ScrollController? controller;

  const _SignedOutProfile({this.controller});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: _NoGlowScrollBehavior(),
      child: CustomScrollView(
        controller: controller,
        physics: const BouncingScrollPhysics(),
        slivers: [
          // Header + overlapping sign-in card
          SliverToBoxAdapter(
            child: _HeaderWithCard(
              title: 'My Profile',
              subtitle:
                  'Sign in to save addresses, track orders and get offers',
              headerBottomPadding: 50.h,
              cardTopOffset: 96.h,
              card: const _SignInCard(),
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 14.h)),

          // Feature cards
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kPageHPad.w),
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Expanded(
                      child: _FeatureCard(
                        icon: Icons.inventory_2_rounded,
                        title: 'Track Orders',
                        subtitle: 'View and track your orders',
                      ),
                    ),
                    SizedBox(width: kGap.w),
                    const Expanded(
                      child: _FeatureCard(
                        icon: Icons.favorite_rounded,
                        title: 'Save Favourites',
                        subtitle: 'Keep your favourite dishes',
                      ),
                    ),
                    SizedBox(width: kGap.w),
                    const Expanded(
                      child: _FeatureCard(
                        icon: Icons.credit_card_rounded,
                        title: 'Faster Checkout',
                        subtitle: 'Quick and easy ordering',
                      ),
                    ),
                    SizedBox(width: kGap.w),
                    const Expanded(
                      child: _FeatureCard(
                        icon: Icons.discount_rounded,
                        title: 'Exclusive Offers',
                        subtitle: 'Get special deals and discounts',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 14.h)),

          // Menu
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                kPageHPad.w,
                0,
                kPageHPad.w,
                kBottomNavSpace.h,
              ),
              child: _MenuCard(
                children: [
                  _ProfileMenuItem(
                    icon: Icons.headset_mic_rounded,
                    title: 'Help Center',
                    subtitle: 'Get help with your orders',
                    onTap: () {},
                  ),
                  _menuDivider(),
                  _ProfileMenuItem(
                    icon: Icons.discount_rounded,
                    title: 'Offers & Coupons',
                    subtitle: 'View latest offers and discounts',
                    onTap: () {},
                  ),
                  _menuDivider(),
                  _ProfileMenuItem(
                    icon: Icons.language_rounded,
                    title: 'Language',
                    subtitle: 'Choose your preferred language',
                    onTap: () {},
                  ),
                  _menuDivider(),
                  _ProfileMenuItem(
                    icon: Icons.settings_rounded,
                    title: 'Settings',
                    subtitle: 'Manage app settings and privacy',
                    onTap: () {},
                    showDivider: false,
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
// SIGN IN CARD  (mascot on the left, text + buttons on the right)
// =============================================================================

class _SignInCard extends StatelessWidget {
  const _SignInCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 16.r,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Mascot inside a soft pink circle
          Container(
            width: 120.w,
            height: 120.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kProfilePink,
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/delivery_mascot.png',
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Icon(
                  Icons.delivery_dining_rounded,
                  color: kProfileRed,
                  size: 56.sp,
                ),
              ),
            ),
          ),

          SizedBox(width: 12.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Good Food Tastes Better Together!',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                    color: kProfileText,
                    height: 1.2,
                  ),
                ),

                SizedBox(height: 6.h),

                Text(
                  'Sign in to enjoy a smoother, faster and more personalised food delivery experience.',
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: Colors.grey.shade600,
                    height: 1.35,
                  ),
                ),

                SizedBox(height: 12.h),

                SizedBox(
                  width: double.infinity,
                  height: 40.h,
                  child: ElevatedButton(
                    onPressed: () {
                      // Opens the real sign-in screen. After a successful
                      // login it opens Home, and this screen loads the
                      // profile from GET /consumer/whoami.
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const SignInScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kProfileRed,
                      elevation: 0,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 4.w),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: Colors.white,
                          size: 18.sp,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 8.h),

                SizedBox(
                  width: double.infinity,
                  height: 40.h,
                  child: OutlinedButton(
                    onPressed: () {
                      // Connect your Create Account screen here.
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: kProfileRed,
                      padding: EdgeInsets.zero,
                      side: const BorderSide(color: kProfileRed, width: 1.2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Create Account',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 4.w),
                        Icon(Icons.chevron_right_rounded, size: 18.sp),
                      ],
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
// LOGGED IN SCREEN
// =============================================================================

class _SignedInProfile extends StatelessWidget {
  final AuthUser user;
  final ScrollController? controller;

  const _SignedInProfile({required this.user, this.controller});

  @override
  Widget build(BuildContext context) {
    final double progress = (user.rewardPoints / user.pointsToNextReward).clamp(
      0.0,
      1.0,
    );

    final int pointsRemaining = (user.pointsToNextReward - user.rewardPoints)
        .clamp(0, 1 << 30);

    return ScrollConfiguration(
      behavior: _NoGlowScrollBehavior(),
      child: CustomScrollView(
        controller: controller,
        physics: const BouncingScrollPhysics(),
        slivers: [
          // Header + profile card
          SliverToBoxAdapter(
            child: _HeaderWithCard(
              title: 'My Profile',
              subtitle: 'Manage your account, addresses and orders',
              headerBottomPadding: 60.h,
              cardTopOffset: 96.h,
              card: _UserProfileCard(user: user),
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 14.h)),

          // Stats
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kPageHPad.w),
              child: Row(
                children: [
                  Expanded(
                    child: _StatChip(
                      icon: Icons.shopping_bag_rounded,
                      value: '${user.orders}',
                      label: 'Orders',
                    ),
                  ),
                  SizedBox(width: kGap.w),
                  Expanded(
                    child: _StatChip(
                      icon: Icons.favorite_rounded,
                      value: '${user.favourites}',
                      label: 'Favourites',
                    ),
                  ),
                  SizedBox(width: kGap.w),
                  Expanded(
                    child: _StatChip(
                      icon: Icons.location_on_rounded,
                      value: '${user.addresses}',
                      label: 'Addresses',
                    ),
                  ),
                  SizedBox(width: kGap.w),
                  Expanded(
                    child: _StatChip(
                      icon: Icons.credit_card_rounded,
                      value: '${user.payments}',
                      label: 'Payments',
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 14.h)),

          // Rewards
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kPageHPad.w),
              child: _RewardsCard(
                progress: progress,
                pointsRemaining: pointsRemaining,
              ),
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 16.h)),

          // Menu
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kPageHPad.w),
              child: _MenuCard(
                children: [
                  _ProfileMenuItem(
                    icon: Icons.shopping_bag_rounded,
                    title: 'My Orders',
                    subtitle: 'View past orders and track current orders',
                    onTap: () {},
                  ),
                  _menuDivider(),
                  _ProfileMenuItem(
                    icon: Icons.location_on_rounded,
                    title: 'Saved Addresses',
                    subtitle: 'Manage your delivery addresses',
                    onTap: () {},
                  ),
                  _menuDivider(),
                  _ProfileMenuItem(
                    icon: Icons.credit_card_rounded,
                    title: 'Payment Methods',
                    subtitle: 'Manage cards, UPI and other payment methods',
                    onTap: () {},
                  ),
                  _menuDivider(),
                  _ProfileMenuItem(
                    icon: Icons.notifications_rounded,
                    title: 'Notifications',
                    subtitle: 'Manage your preferences',
                    onTap: () {},
                  ),
                  _menuDivider(),
                  _ProfileMenuItem(
                    icon: Icons.discount_rounded,
                    title: 'Offers & Coupons',
                    subtitle: 'View latest offers and saved coupons',
                    onTap: () {},
                  ),
                  _menuDivider(),
                  _ProfileMenuItem(
                    icon: Icons.headset_mic_rounded,
                    title: 'Help Center',
                    subtitle: 'Get help with your orders',
                    onTap: () {},
                  ),
                  _menuDivider(),
                  _ProfileMenuItem(
                    icon: Icons.settings_rounded,
                    title: 'Settings',
                    subtitle: 'Manage app settings and privacy',
                    onTap: () {},
                    showDivider: false,
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 16.h)),

          // Logout
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                kPageHPad.w,
                0,
                kPageHPad.w,
                kBottomNavSpace.h,
              ),
              child: GestureDetector(
                onTap: () => _confirmLogout(context),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 14.h),
                  decoration: BoxDecoration(
                    color: kProfileRed.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.logout_rounded,
                        color: kProfileRed,
                        size: 18.sp,
                      ),
                      SizedBox(width: kGap.w),
                      Text(
                        'Log Out',
                        style: TextStyle(
                          color: kProfileRed,
                          fontSize: 14.5.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(width: 6.w),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: kProfileRed,
                        size: 16.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _confirmLogout(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          title: const Text('Log out?'),
          content: const Text('You can sign back in anytime.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                // Removes the saved token + clears the profile.
                AuthStore.instance.signOut();
              },
              child: const Text(
                'Log Out',
                style: TextStyle(color: kProfileRed),
              ),
            ),
          ],
        );
      },
    );
  }
}

// =============================================================================
// USER PROFILE CARD
// =============================================================================

class _UserProfileCard extends StatelessWidget {
  final AuthUser user;

  const _UserProfileCard({required this.user});

  Widget _avatarFallback() {
    return Container(
      width: 58.w,
      height: 58.w,
      color: kProfileRed.withOpacity(0.1),
      child: Icon(Icons.person_rounded, color: kProfileRed, size: 30.sp),
    );
  }

  Widget _avatar() {
    if (user.avatar.isEmpty) return _avatarFallback();

    return Image.network(
      user.avatar,
      width: 58.w,
      height: 58.w,
      fit: BoxFit.cover,
      errorBuilder: (_, __, ___) => _avatarFallback(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 16.r,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipOval(child: _avatar()),

          SizedBox(width: 14.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.5.sp,
                    fontWeight: FontWeight.w800,
                    color: kProfileText,
                  ),
                ),

                SizedBox(height: 4.h),

                Row(
                  children: [
                    Icon(
                      Icons.call_rounded,
                      size: 13.sp,
                      color: Colors.grey.shade500,
                    ),
                    SizedBox(width: 5.w),
                    Expanded(
                      child: Text(
                        user.phone,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 3.h),

                Row(
                  children: [
                    Icon(
                      Icons.email_rounded,
                      size: 13.sp,
                      color: Colors.grey.shade500,
                    ),
                    SizedBox(width: 5.w),
                    Expanded(
                      child: Text(
                        user.email,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          GestureDetector(
            onTap: () {},
            child: Container(
              width: 38.w,
              height: 38.w,
              decoration: BoxDecoration(
                color: kProfileRed.withOpacity(0.08),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.edit_rounded, color: kProfileRed, size: 17.sp),
            ),
          ),
        ],
      ),
    );
  }
}

// =============================================================================
// REWARDS
// =============================================================================

class _RewardsCard extends StatelessWidget {
  final double progress;
  final int pointsRemaining;

  const _RewardsCard({required this.progress, required this.pointsRemaining});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [kProfileRed, kProfileRedDark]),
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 40.w,
                height: 40.w,
                decoration: const BoxDecoration(
                  color: Color(0xFFF7B500),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.workspace_premium_rounded,
                  color: Colors.white,
                  size: 22.sp,
                ),
              ),

              SizedBox(width: 10.w),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gold Rewards',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "You're earning bigger rewards!",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 11.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 12.h),

          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: LinearProgressIndicator(
              value: progress,
              minHeight: 7.h,
              backgroundColor: Colors.black.withOpacity(0.25),
              valueColor: const AlwaysStoppedAnimation<Color>(
                Color(0xFFF7B500),
              ),
            ),
          ),

          SizedBox(height: 10.h),

          Row(
            children: [
              Text(
                '$pointsRemaining points to next reward',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11.5.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const Spacer(),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'View Rewards',
                      style: TextStyle(
                        color: kProfileRed,
                        fontSize: 11.5.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 3.w),
                    Icon(
                      Icons.arrow_forward_rounded,
                      color: kProfileRed,
                      size: 13.sp,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// =============================================================================
// FEATURE CARD  (pale pink, no shadow, bare icon - matches the design)
// =============================================================================

class _FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _FeatureCard({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 14.h),
      decoration: BoxDecoration(
        color: kProfilePink,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          Icon(icon, color: kProfileRed, size: 30.sp),

          SizedBox(height: 6.h),

          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              title,
              maxLines: 1,
              style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.w800,
                color: kProfileText,
              ),
            ),
          ),

          SizedBox(height: 3.h),

          Text(
            subtitle,
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 9.5.sp,
              color: Colors.grey.shade600,
              height: 1.25,
            ),
          ),
        ],
      ),
    );
  }
}

// =============================================================================
// STAT CHIP
// =============================================================================

class _StatChip extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const _StatChip({
    required this.icon,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 6.w),
      decoration: BoxDecoration(
        color: kProfilePink,
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 22.w,
            child: Icon(icon, color: kProfileRed, size: 20.sp),
          ),

          SizedBox(width: 5.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  value,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w800,
                    color: kProfileText,
                    height: 1.1,
                  ),
                ),
                Text(
                  label,
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 9.sp,
                    color: Colors.grey.shade600,
                    height: 1.2,
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
// MENU CARD
// =============================================================================

class _MenuCard extends StatelessWidget {
  final List<Widget> children;

  const _MenuCard({required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.r),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 12.r),
        ],
      ),
      child: Column(children: children),
    );
  }
}

// =============================================================================
// MENU ITEM  (bare red icon, no tinted box - matches the design)
// =============================================================================

class _ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final bool showDivider;

  const _ProfileMenuItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        child: Row(
          children: [
            SizedBox(
              width: 32.w,
              child: Icon(icon, color: kProfileRed, size: 26.sp),
            ),

            SizedBox(width: 14.w),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: kProfileText,
                    ),
                  ),

                  SizedBox(height: 2.h),

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

            Icon(
              Icons.chevron_right_rounded,
              color: Colors.grey.shade600,
              size: 22.sp,
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// DIVIDER
// =============================================================================

Widget _menuDivider() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    child: Divider(height: 1, thickness: 0.8, color: Colors.grey.shade200),
  );
}
