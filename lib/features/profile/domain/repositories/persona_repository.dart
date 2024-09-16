import 'package:myapp/features/profile/core/entities/persona.dart';

abstract class PersonaRepository {
  Future<List<Persona>> findPersona();
}
