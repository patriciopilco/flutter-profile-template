import 'package:myapp/features/profile/core/entities/persona.dart';
import 'package:myapp/features/profile/domain/repositories/persona_repository.dart';

class ObtenerPersona {
  final PersonaRepository repository;

  ObtenerPersona(this.repository);

  Future<List<Persona>> obtenerPersonas() async {
    final personas = await repository.findPersona();
    return personas;
  }

}
