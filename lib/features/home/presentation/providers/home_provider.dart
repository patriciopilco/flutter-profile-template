import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home_provider.g.dart';

@Riverpod()
String welcome(WelcomeRef ref) {
  return 'Welcome to Termoterapias!';
}
