import 'package:myapp/features/personas/domain/entities/persona.dart';

abstract class PersonaDs {
  Future<List<Persona>> findPersona();
}
