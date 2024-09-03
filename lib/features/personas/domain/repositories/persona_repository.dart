import 'package:myapp/features/personas/domain/entities/persona.dart';

abstract class PersonaRepository {
  Future<List<Persona>> findPersona();
}
