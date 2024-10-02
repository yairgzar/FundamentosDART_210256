void main() {
  // Constructores Nombrados
  // CASO DE PRUEBA 1 -- Enviando todos

  final YairS = Person(
    ID: 25,
    cortesyTitle: "Ing",
    name: "Yair",
    firstLastName: "Gonzalez",
    secondLastName: "Salazar",
    gender: "Hombre",
    bloodGroup: "O+",
    photoURL: "imagenes/users/25.png",
    curp: "GOSY030910HPLNLRA3",
    birthdate: DateTime(2003, 9, 10),
    isActive: true,
    createdAt: DateTime(2024, 9, 24, 5, 16),
  );

  print(YairS);

  // CASO DE PRUEBA 2 -- Enviando solo los datos requeridos (obligatorios)
  final JazG = Person(
    ID: 17,
    name: "Jazmin",
    firstLastName: "Garrido",
    gender: "Mujer",
    bloodGroup: "O+",
    birthdate: DateTime(2006, 8, 17),
  );

  print(JazG);
}

class Person {
  int ID; 
  String? cortesyTitle;
  String name;
  String firstLastName; 
  String? secondLastName;
  String gender;
  String bloodGroup;
  String? photoURL;
  String? curp;
  DateTime birthdate;
  bool isActive;
  DateTime createdAt;
  DateTime? updatedAt; 

  Person({
    required this.ID,
    this.cortesyTitle,
    required this.name,
    required this.firstLastName,
    this.secondLastName,
    required this.gender,
    required this.bloodGroup,
    this.photoURL,
    this.curp,
    required this.birthdate,
    this.isActive = true,
    DateTime? createdAt,
    this.updatedAt,
  }) : createdAt = createdAt ?? DateTime.now();

  @override
  String toString() {
    final String formatedBirthDate = 
      "${birthdate.day.toString().padLeft(2, '0')}/" + "${birthdate.month.toString().padLeft(2, '0')}/${birthdate.year}";

    final String formatedCreatedDate = 
      "${createdAt.day.toString().padLeft(2, '0')}/" + "${createdAt.month.toString().padLeft(2, '0')}:${createdAt.year} ${createdAt.hour.toString().padLeft(2, '0')}:${createdAt.minute.toString().padLeft(2,'0')}:${createdAt.second.toString().padLeft(2, '0')}";

    curp ??= "No Registrado";
    if (curp == "") curp = "No Registrado";

    String status = isActive ? "Activo" : "Inactivo"; 

    return """
    -----------------------------------------------------
    Datos de la Persona
    -----------------------------------------------------
    ID: $ID,
    Nombre: $name $firstLastName $secondLastName
    Genero: $gender
    Grupo Sanguineo: $formatedBirthDate
    CURP: $curp
    Estatus: $status
    Fecha de Registro: $formatedCreatedDate
    --------------------------------------------------
    """;
  }
}
