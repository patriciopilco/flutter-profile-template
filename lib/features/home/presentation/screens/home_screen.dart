import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/common/widgets/widget_bottom_navigation_bar.dart';
import 'package:myapp/features/home/presentation/providers/home_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final welcome = ref.watch(welcomeProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home 1'),
        ),
        body: const Center(
          //child:Text(welcome),
          child: Text('Bienvenido....'),
        ),
        bottomNavigationBar: WidgetBottomNavigationBar());
  }
}
