import 'package:myapp/features/personas/domain/datasources/persona_ds.dart';
import 'package:myapp/features/personas/domain/entities/persona.dart';
import 'package:myapp/features/personas/domain/repositories/persona_repository.dart';

class PersonaRepositoryImpl implements PersonaRepository {
  final PersonaDs personaDs;

  PersonaRepositoryImpl({required this.personaDs});

  @override
  Future<List<Persona>> findPersona() {
    return personaDs.findPersona();
  }
}
