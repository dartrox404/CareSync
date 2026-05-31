import 'package:care_sync/features/pages/home_page.dart';
import 'package:care_sync/features/pages/onboarding_page.dart';
import 'package:go_router/go_router.dart';

class CustomAppRoute {
  static final GoRouter approute = GoRouter(
    initialLocation: '/onboard',
    routes: [
      GoRoute(path: '/home', builder: (context, state) => const HomePage()),
      GoRoute(
        path: '/onboard',
        builder: (context, state) => const OnboardingPage(),
      ),
    ],
  );
}
