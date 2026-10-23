import 'package:deleivery_app/api/tokenstorage.dart';
import 'package:deleivery_app/auth/guest/guest_Session.dart';
import 'package:deleivery_app/home/homescreen.dart';

import 'package:deleivery_app/screens/splashScreen/splashScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final hasToken = await TokenStorage.restore();
  await GuestSession.restore();
  if (kDebugMode) {
    final token = await TokenStorage.read();
    debugPrint('hasToken: $hasToken');
    debugPrint(
      'stored token: ${token == null ? "NONE" : token.substring(0, 20)}...',
    );
    debugPrint(
      'isGuest: ${GuestSession.isGuest}, guestId: ${GuestSession.guestId}',
    );
  }

  runApp(MyApp(startLoggedIn: hasToken || GuestSession.isGuest));
}

class MyApp extends StatelessWidget {
  /// true  = saved token or guest session found -> go straight in.
  /// false = new user / logged out -> splash, then login.
  final bool startLoggedIn;

  const MyApp({super.key, this.startLoggedIn = false});

  @override
  Widget build(BuildContext context) {
    // ScreenUtilInit must wrap MaterialApp (not sit inside a screen), so
    // every widget in the app — SplashScreen, LoginScreen, HomeScreen,
    // SearchScreen, etc. — has access to .w / .h / .sp / .r regardless of
    // which screen is currently pushed on the navigator.
    return ScreenUtilInit(
      // Design size = the reference screen size all your .w/.h/.sp values
      // are proportioned against. 360x800 matches the phone baseline
      // you've already been designing around (homeScale's 360 constant).
      designSize: const Size(360, 800),

      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Delivery App',

          theme: ThemeData(
            useMaterial3: true,

            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFFD03223),
            ),

            scaffoldBackgroundColor: Colors.white,

            appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xFFD03223),
              foregroundColor: Colors.white,
              elevation: 0,
            ),
          ),

          // Token or guest session found -> straight to the screen shown
          // after login. Otherwise -> normal splash -> login flow.
          home: startLoggedIn ? const HomeScreen() : child,
        );
      },
      child: const SplashScreen(),
    );
  }
}
