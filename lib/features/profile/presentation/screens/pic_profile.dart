import 'package:flutter/material.dart';
import 'package:myapp/features/profile/core/entities/persona.dart';
import 'package:myapp/features/profile/presentation/screens/person_screen.dart';

class PicProfile extends StatelessWidget {
  final Persona persona;

  const PicProfile({super.key, required this.persona});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(image: persona.image),
        Text(
          '${persona.nombres}${persona.apellidos}',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }
}
