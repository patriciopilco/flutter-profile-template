class Persona {
  final int id;
  final String nombres;
  final String apellidos;
  final String cedula;
  final String telefono;
  final int edad;
  final bool estado;
  final String image;

  Persona({
    required this.id,
    required this.nombres,
    required this.apellidos,
    required this.cedula,
    required this.telefono,
    required this.edad,
    required this.estado,
    required this.image,
  });

  factory Persona.fromJson(Map<String, dynamic> json) {
    return Persona(
      id: json['id'],
      nombres: json['nombres'],
      apellidos: json['apellidos'],
      cedula: json['cedula'],
      telefono: json['telefono'],
      edad: json['edad'],
      estado: json['estado'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nombres': nombres,
      'apellidos': apellidos,
      'cedula': cedula,
      'telefono': telefono,
      'edad': edad,
      'estado': estado,
      'image': image,
    };
  }

  static none() {
    return Persona(
        id: 0, nombres: '', apellidos: '', cedula: '', telefono: '', edad: 0, estado: false, image: '');
  }
}
