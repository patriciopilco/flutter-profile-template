import 'package:flutter/material.dart';
import 'package:myapp/features/profile/core/entities/persona.dart';

class DataProfile extends StatelessWidget {
  final Persona persona;

  const DataProfile({super.key, required this.persona});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            leading: const Icon(Icons.cake, color: Colors.blueAccent, size: 30),
            title: const Text('Edad', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(persona.edad.toString()),
          ),
        ),
        const SizedBox(height: 10),
        Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            leading: const Icon(Icons.phone, color: Colors.green, size: 30),
            title:
                const Text('Teléfono', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(persona.telefono),
          ),
        ),
        const SizedBox(height: 10),
        Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            leading: const Icon(Icons.circle, color: Colors.green, size: 30),
            title:
                const Text('Estado', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(persona.estado ? 'Activo' : 'Inactivo'),
          ),
        ),
      ],
    );
  }
}




