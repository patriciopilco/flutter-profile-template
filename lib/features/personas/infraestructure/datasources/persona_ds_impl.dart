import 'package:myapp/config/constants/environment.dart';
import 'package:myapp/features/personas/domain/datasources/persona_ds.dart';
import 'package:myapp/features/personas/domain/entities/persona.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class PersonaDsImpl implements PersonaDs {
  @override
  Future<List<Persona>> findPersona() async {
    Supabase.initialize(url: Environment.baseUrl, anonKey: Environment.apiKey);
    final _future = Supabase.instance.client.from('personas').select();
    return _future.then((value) => value.map((e) => Persona.fromJson(e)).toList());
  }
}
