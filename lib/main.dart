import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/config/constants/environment.dart';
import 'package:myapp/config/router/app_router.dart';
import 'package:myapp/config/theme/app_theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
   await Supabase.initialize(url: Environment.baseUrl, anonKey: Environment.apiKey);
   runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    return MaterialApp.router(
      title: 'Termoterapia',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: AppTheme(isDarkmode: false).getTheme(),
    );
  }
}
