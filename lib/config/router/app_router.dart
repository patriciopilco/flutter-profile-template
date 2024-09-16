import 'package:go_router/go_router.dart';
import 'package:myapp/features/home/presentation/providers/botton_nav_index.dart';
import 'package:myapp/features/home/presentation/screens/home_screen.dart';
import 'package:myapp/features/profile/presentation/screens/person_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  final currentIndex = ref.watch(bottonNavIndexProvider);

  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/person',
        builder: (context, state) => const PersonScreen(),
      ),
    ],
    redirect: (context, state) {
      switch (currentIndex) {
        case 0:
          return '/';
        case 1:
          return '/person';
        default:
          return '/';
      }
    },
  );
}
