class Persona {
  final int id;
  final String nombres;
  final String apellidos;
  final String cedula;
  final String telefono;

  Persona({
    required this.id,
    required this.nombres,
    required this.apellidos,
    required this.cedula,
    required this.telefono,
  });

  factory Persona.fromJson(Map<String, dynamic> json) {
    return Persona(
      id: json['id'],
      nombres: json['nombres'],
      apellidos: json['apellidos'],
      cedula: json['cedula'],
      telefono: json['telefono'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nombres': nombres,
      'apellidos': apellidos,
      'cedula': cedula,
      'telefono': telefono,
    };
  }
}
