/*import 'package:mysql1/mysql1.dart';

class DataBase {
  late var conn;

  static void connectionPracticas() async {
    final conn = await MySqlConnection.connect(ConnectionSettings(
        host: 'localhost',
        port: 3306,
        user: 'root',
        db: 'laboratoriobd',
        password: 'root'));

    await Future.delayed(const Duration(milliseconds: 1000));
  }

  var conn2 = connectionPracticas();
  void insert(String fecha, String dia, String desde, String hasta, String grupo, String carrera, String materia, String docente, int alumnos, String software) async {
    await conn.query(
        'insert into practicas (fecha, dia, horario, grupo, carrera, materia, docente, alumnos, software) values (?, ?, ?, ?, ?, ?, ?, ?, ?)',
        [
          fecha,
          dia,
          '$desde - $hasta',
          grupo,
          carrera,
          materia,
          docente,
          alumnos,
          software,
        ]);
  }
}*/