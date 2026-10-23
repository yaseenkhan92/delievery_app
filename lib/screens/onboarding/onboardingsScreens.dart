import 'package:deleivery_app/auth/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// =============================================================================
// COLORS
// =============================================================================

const Color kBrandRed = Color(0xFFF20D0D);
const Color kBrandRedDark = Color(0xFFC1291C);
const Color kTextBlack = Color(0xFF202124);
const Color kSubtitle = Color(0xFF65686E);

// =============================================================================
// ONBOARDING DATA MODEL
// =============================================================================

class OnboardingData {
  final String image;
  final String titleLine1;
  final String titleLine2;
  final String subtitle;

  const OnboardingData({
    required this.image,
    required this.titleLine1,
    required this.titleLine2,
    required this.subtitle,
  });
}

// =============================================================================
// ONBOARDING SCREEN
// =============================================================================
//
// CONVERTED TO flutter_screenutil:
//
// Every `sw * fraction` / `sh * fraction` from the old MediaQuery-based
// version has been replaced with a fixed design-pixel value using .w / .h
// / .sp, computed as (fraction * designWidth) or (fraction * designHeight)
// against the 360x800 designSize set in main.dart's ScreenUtilInit. Those
// extensions do the same job MediaQuery.size was doing by hand — scaling a
// number relative to the real device screen — but with a single shared,
// centrally-configured reference size instead of ad-hoc math repeated in
// every file.
//
// safe-area insets now come from ScreenUtil().statusBarHeight /
// ScreenUtil().bottomBarHeight instead of MediaQuery.padding.
//
// LayoutBuilder-based math in the three page widgets is UNCHANGED — that's
// sizing relative to each page's own local render box (not the device
// screen), which is a different, already-correct technique, not something
// this conversion needed to touch.
// =============================================================================

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  // ===========================================================================
  // PAGES (text content only — each page's image widget is separate below)
  // ===========================================================================

  final List<OnboardingData> _pages = const [
    OnboardingData(
      image: 'assets/page1.png',
      titleLine1: 'Hot Meals,',
      titleLine2: 'Delivered Fast',
      subtitle:
          'Order from your favorite restaurants and get fresh food delivered quickly to your doorstep.',
    ),
    OnboardingData(
      image: 'assets/page2.png',
      titleLine1: 'Track Every Order',
      titleLine2: 'Live',
      subtitle:
          'See your rider in real time, follow the route, and know exactly when your order will arrive.',
    ),
    OnboardingData(
      image: 'assets/page33.png',
      titleLine1: 'Easy Payments,',
      titleLine2: 'Many Options',
      subtitle: 'Pay the way you want — cards, wallets, or cash on delivery.',
    ),
  ];

  // ===========================================================================
  // NEXT
  // ===========================================================================

  void _goNext() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => LoginScreen(selectedCountry: '')),
      );
    }
  }

  // ===========================================================================
  // DISPOSE
  // ===========================================================================

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  // ===========================================================================
  // BUILD
  // ===========================================================================

  @override
  Widget build(BuildContext context) {
    // Safe-area insets via ScreenUtil instead of MediaQuery.padding.
    final double topSafe = ScreenUtil().statusBarHeight;
    final double bottomSafe = ScreenUtil().bottomBarHeight;

    // Lock text scaling so accessibility font-size settings can't distort
    // this hand-tuned layout differently on different phones. This is a
    // deliberate override of the system text-scale factor — a separate
    // concern from device-size responsiveness — so it still goes through
    // MediaQuery directly rather than ScreenUtil.
    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
        child: Scaffold(
          backgroundColor: kBrandRed,
          body: Stack(
            clipBehavior: Clip.none,
            children: [
              // =================================================================
              // RED BACKGROUND
              // =================================================================
              Positioned.fill(
                child: Image.asset(
                  'assets/bg.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),

              // =================================================================
              // WHITE CURVED CARD
              // =================================================================
              Positioned(
                left: 0,
                right: 0,
                top: 512.h, // was sh * 0.640
                bottom: 0,
                child: CustomPaint(
                  painter: _CardShadowPainter(),
                  child: ClipPath(
                    clipper: _CardTopClipper(),
                    child: Container(color: Colors.white),
                  ),
                ),
              ),

              // =================================================================
              // PAGE VIEW — three independent, self-contained page widgets
              // =================================================================
              Positioned.fill(
                child: PageView(
                  controller: _pageController,
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  children: [
                    _OnboardingPageOne(
                      image: _pages[0].image,
                      topSafe: topSafe,
                    ),
                    _OnboardingPageTwo(image: _pages[1].image),
                    _OnboardingPageThree(image: _pages[2].image),
                  ],
                ),
              ),

              // =================================================================
              // CARD CONTENT — text, dots, button in ONE Column so the gap
              // between them is computed by Flutter's layout, not by us
              // guessing two independent offsets that can drift apart.
              // =================================================================
              Positioned(
                left: 0,
                right: 0,
                top: 512.h, // was sh * 0.640
                bottom: 0,
                child: Column(
                  children: [
                    // Gap from the top of the card to the text block.
                    SizedBox(height: 60.h), // was sh * 0.075
                    // Expanded takes all leftover space (like Spacer did
                    // before) AND, unlike a fixed guess, gracefully
                    // handles text that turns out taller than expected —
                    // on a very short device, or if a translation makes
                    // the subtitle longer than the English text here, it
                    // becomes scrollable instead of throwing a hard
                    // overflow error.
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 34.2.w, // was sw * 0.095
                          right: 27.w, // was sw * 0.075
                        ),
                        child: IgnorePointer(
                          child: SingleChildScrollView(
                            physics: const ClampingScrollPhysics(),
                            child: _buildTextContent(_pages[_currentPage]),
                          ),
                        ),
                      ),
                    ),

                    // ===========================================================
                    // PAGE DOTS
                    // ===========================================================
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(_pages.length, (index) {
                        final bool active = index == _currentPage;
                        final double activeSize = 14.w; // was sw * 0.0389
                        final double inactiveSize = 10.w; // was sw * 0.0278
                        final double margin = 7.w; // was sw * 0.0194

                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          margin: EdgeInsets.symmetric(horizontal: margin),
                          width: active ? activeSize : inactiveSize,
                          height: active ? activeSize : inactiveSize,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: active ? kBrandRed : const Color(0xFFD9DDE2),
                            boxShadow: active
                                ? [
                                    BoxShadow(
                                      color: kBrandRed.withOpacity(0.25),
                                      blurRadius: 6,
                                      offset: const Offset(0, 2),
                                    ),
                                  ]
                                : null,
                          ),
                        );
                      }),
                    ),

                    // Fixed gap between dots and button — same design-scaled
                    // distance on every phone.
                    SizedBox(height: 12.h), // was sh * 0.015
                    // ===========================================================
                    // NEXT BUTTON
                    // ===========================================================
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.6.w, // was sw * 0.085
                      ),
                      child: ShinyButton(
                        label: _currentPage == _pages.length - 1
                            ? 'Get Started'
                            : 'Next',
                        height: 52.h, // was sh * 0.065
                        onPressed: _goNext,
                      ),
                    ),

                    // Fixed bottom gap: safe-area inset (so it clears the
                    // home indicator / gesture bar) plus a small fixed
                    // design-scaled gap, same on every device.
                    SizedBox(height: bottomSafe + 16.h), // was + sh * 0.020
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ===========================================================================
  // TEXT CONTENT
  // ===========================================================================

  Widget _buildTextContent(OnboardingData data) {
    final double titleSize = 29.52.sp; // was sw * 0.082
    final double subtitleSize = 12.6.sp; // was sw * 0.035

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '${data.titleLine1}\n',
                style: TextStyle(
                  color: kTextBlack,
                  fontSize: titleSize,
                  fontWeight: FontWeight.w900,
                  height: 1.00,
                ),
              ),
              TextSpan(
                text: data.titleLine2,
                style: TextStyle(
                  color: kBrandRed,
                  fontSize: titleSize,
                  fontWeight: FontWeight.w900,
                  height: 1.0,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 7.92.w), // was sw * 0.022
        Text(
          data.subtitle,
          style: TextStyle(
            color: kSubtitle,
            fontSize: subtitleSize,
            fontWeight: FontWeight.w400,
            height: 1.48,
          ),
        ),
      ],
    );
  }
}

// =============================================================================
// PAGE 1 — self-contained, own fractional layout
// =============================================================================
// UNCHANGED: uses LayoutBuilder's local constraints (its own render box),
// not device screen size — a legitimate, already-responsive technique that
// doesn't need ScreenUtil.
// =============================================================================

class _OnboardingPageOne extends StatelessWidget {
  final String image;
  final double topSafe;

  const _OnboardingPageOne({required this.image, required this.topSafe});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double bw = constraints.maxWidth;
        final double bh = constraints.maxHeight;

        return Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: bw * 0.010,
              right: bw * 0.020,
              top: topSafe + bh * 0.1060,
              bottom: bh * -0.020,
              child: Image.asset(
                image,
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
              ),
            ),
          ],
        );
      },
    );
  }
}

// =============================================================================
// PAGE 2 — self-contained, own fractional layout
// =============================================================================

class _OnboardingPageTwo extends StatelessWidget {
  final String image;

  const _OnboardingPageTwo({required this.image});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double bw = constraints.maxWidth;
        final double bh = constraints.maxHeight;

        return Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 0,
              right: bw * -0.025,
              top: 0,
              bottom: bh * 0.36,
              child: Image.asset(
                image,
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
              ),
            ),
          ],
        );
      },
    );
  }
}

// =============================================================================
// PAGE 3 — self-contained, own fractional layout
// =============================================================================

class _OnboardingPageThree extends StatelessWidget {
  final String image;

  const _OnboardingPageThree({required this.image});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double bw = constraints.maxWidth;
        final double bh = constraints.maxHeight;

        return Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 0,
              right: bw * -0.025,
              top: bh * 0.02,
              bottom: bh * -0.35,
              child: Image.asset(
                image,
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
              ),
            ),
          ],
        );
      },
    );
  }
}

// =============================================================================
// WHITE CARD TOP CLIPPER
// =============================================================================
// UNCHANGED: `size` here is the local canvas the CustomClipper is given
// (the card's own box), not the device screen — no MediaQuery involved.
// =============================================================================

class _CardTopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    path.moveTo(0, size.height * 0.115);

    path.cubicTo(
      size.width * 0.018,
      size.height * 0.055,
      size.width * 0.075,
      0,
      size.width * 0.17,
      0,
    );

    path.cubicTo(
      size.width * 0.29,
      0,
      size.width * 0.38,
      size.height * 0.085,
      size.width * 0.50,
      size.height * 0.085,
    );

    path.cubicTo(
      size.width * 0.61,
      size.height * 0.085,
      size.width * 0.68,
      size.height * 0.025,
      size.width * 0.77,
      size.height * 0.035,
    );

    path.cubicTo(
      size.width * 0.88,
      size.height * 0.040,
      size.width * 0.96,
      size.height * 0.075,
      size.width,
      size.height * 0.13,
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

// =============================================================================
// CARD SHADOW
// =============================================================================

class _CardShadowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Path path = _CardTopClipper().getClip(size);
    canvas.drawShadow(path, Colors.black.withOpacity(0.10), 12, false);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

// =============================================================================
// SHINY BUTTON
// =============================================================================

class ShinyButton extends StatefulWidget {
  final String label;
  final double height;
  final VoidCallback onPressed;

  const ShinyButton({
    super.key,
    required this.label,
    required this.height,
    required this.onPressed,
  });

  @override
  State<ShinyButton> createState() => _ShinyButtonState();
}

class _ShinyButtonState extends State<ShinyButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        width: double.infinity,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.r),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFFF20D0D), Color(0xFFEF1111), Color(0xFFE91A1A)],
          ),
          boxShadow: [
            BoxShadow(
              color: kBrandRed.withOpacity(0.23),
              blurRadius: 20,
              spreadRadius: 0,
              offset: const Offset(0, 9),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50.r),
          child: Stack(
            children: [
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  final double shineWidth = 45.w; // was sw * 0.125
                  // Full-screen-width offsets — these describe how far the
                  // shine sweeps relative to the device's actual width, so
                  // 1.sw (ScreenUtil's live screen-width getter) is used
                  // here rather than a fixed design-pixel .w value.
                  final double sweepStart = -0.28.sw;
                  final double sweepRange = 1.sw + 0.56.sw;
                  return Positioned(
                    left: sweepStart + (_controller.value * sweepRange),
                    top: -20,
                    bottom: -20,
                    child: Transform.rotate(
                      angle: 0.40,
                      child: Container(
                        width: shineWidth,
                        color: Colors.white.withOpacity(0.13),
                      ),
                    ),
                  );
                },
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 21.96.w, // was sw * 0.061
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 24.12.w), // was sw * 0.067
                      Expanded(
                        child: Text(
                          widget.label,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp, // was sw * 0.05
                            fontWeight: FontWeight.w700,
                            height: 1,
                          ),
                        ),
                      ),
                      SizedBox(width: 24.12.w), // was sw * 0.067
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 20.88.sp, // was sw * 0.058
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
}
