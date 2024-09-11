import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/config/router/app_router.dart';
import 'package:myapp/features/home/presentation/providers/botton_nav_index.dart';

class WidgetBottomNavigationBar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottonNavIndexProvider);
    // TODO: implement build
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        ref.read(bottonNavIndexProvider.notifier).state = index;
        final goRouter = ref.read(appRouterProvider);

        // Navegar según el índice seleccionado
        switch (index) {
          case 0:
            goRouter.go('/');
            break;
          case 1:
            goRouter.go('/person');
            break;
          case 2:
            goRouter.go('/profile');
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
