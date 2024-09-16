import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/common/widgets/widget_bottom_navigation_bar.dart';
import 'package:myapp/features/profile/presentation/providers/future_providers.dart';

class PersonScreen extends ConsumerWidget {
  const PersonScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final person = ref.watch(personasProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Person Title'),
        ),
        body: Center(
          child: person.when(
              data: (persona) => Text(persona.nombres),
              error: (error, stackTrace) => Text('$error'),
              loading: () => const CircularProgressIndicator()),
        ),
        
        bottomNavigationBar: WidgetBottomNavigationBar());
  }
}
