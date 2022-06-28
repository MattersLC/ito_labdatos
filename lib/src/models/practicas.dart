class Practica {
  int id;
  String fecha;
  String dia;
  String horario;
  String grupo;
  String carrera;
  String materia;
  String docente;
  int alumnos;
  String software;

  Practica({
    required this.id,
    required this.fecha,
    required this.dia,
    required this.horario,
    required this.carrera,
    required this.materia,
    required this.grupo,
    required this.docente,
    required this.alumnos,
    required this.software});

  factory Practica.fromJson(Map<String, dynamic> json) {
    return Practica(
      id: json['id'] as int,
      fecha: json['fecha'] as String,
      dia: json['dia'] as String,
      horario: json['horario'] as String,
      grupo: json['grupo'] as String,
      carrera: json['carrera'] as String,
      materia: json['materia'] as String,
      docente: json['docente'] as String,
      alumnos: json['alumnos'] as int,
      software: json['software'] as String,
    );
  }
}