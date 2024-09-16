import 'dart:async';

import 'package:myapp/features/profile/core/entities/persona.dart';
import 'package:myapp/features/profile/domain/repositories/persona_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class PersonaRepositoryImpl implements PersonaRepository {
  @override
  Future<List<Persona>> findPersona() async {
    final data = await Supabase.instance.client.from('personas').select('*');
    return data.map((e) => Persona.fromJson(e)).toList();
  }
}
