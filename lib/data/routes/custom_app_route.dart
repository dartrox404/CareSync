import 'package:care_sync/features/pages/home_page.dart';
import 'package:care_sync/features/pages/onboarding_page.dart';
import 'package:care_sync/features/pages/intro_page.dart';
import 'package:go_router/go_router.dart';

class CustomAppRoute {
  static final GoRouter approute = GoRouter(
    initialLocation: '/intro',
    routes: [
      GoRoute(path: '/intro', builder: (context, state) => const IntroPage()),
      GoRoute(path: '/home', builder: (context, state) => const HomePage()),
      GoRoute(
        path: '/onboard',
        builder: (context, state) => const OnboardingPage(),
      ),
    ],
  );
}
