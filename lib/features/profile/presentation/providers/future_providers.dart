import 'dart:async';
import 'package:myapp/features/profile/core/entities/persona.dart';
import 'package:myapp/features/profile/infraestructure/datasources/persona_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'future_providers.g.dart';

@riverpod
Future<Persona> personas(PersonasRef ref) async {
  PersonaRepositoryImpl personaRepositoryImpl = PersonaRepositoryImpl();
  List<Persona> response = await personaRepositoryImpl.findPersona();
  if (response.isNotEmpty) {
    return response[0];
  }
  return Persona.none();
}
