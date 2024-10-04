import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/features/home/presentation/providers/home_provider.dart';
import 'package:myapp/features/profile/presentation/screens/person_screen.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final welcome = ref.watch(welcomeProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2),
            Image.network("https://mcmygbyijhazgjgfjpky.supabase.co/storage/v1/object/sign/app/home/introapp.png?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJhcHAvaG9tZS9pbnRyb2FwcC5wbmciLCJpYXQiOjE3MjgwNzc2OTksImV4cCI6MTc1OTYxMzY5OX0.nR8Tbe381u9-1pGKSODV1G7_XeY59SSQZwLVbjv-YTo&t=2024-10-04T21%3A34%3A59.980Z"),
            const Spacer(flex: 3),
            Text(welcome,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Text(
              "Toda tu información en un solo lugar",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .color!
                    .withOpacity(0.64),
              ),
            ),
            const Spacer(flex: 3),
            SupaEmailAuth(
            redirectTo: kIsWeb ? null : 'io.mydomain.myapp://callback',
            onSignInComplete: (response) {
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PersonScreen(),
                  ),
                );
            },
            onSignUpComplete: (response) {
             
            },
            metadataFields: [
              MetaDataField(
              prefixIcon: const Icon(Icons.person),
              label: 'Username',
              key: 'username',
              validator: (val) {
                      if (val == null || val.isEmpty) {
                      return 'Please enter something';
                      }
                      return null;
                    },
                  ),
              ],
          ),
            const Spacer(flex: 2),
            TextButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PersonScreen(),
                  ),
                );
              },
              icon: const Text("Skip"),
              label: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
