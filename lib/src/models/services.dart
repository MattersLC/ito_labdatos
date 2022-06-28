import 'dart:convert';
import 'package:http/http.dart' as http;
import 'practicas.dart';

class Services {
  static const ROOT = 'http://localhost/PracticasDB/practica_actions.php';
  static const _CREATE_TABLE_ACTION = 'CREATE_TABLE';
  static const _GET_ALL_ACTION = 'GET_ALL';
  static const _ADD_PRAC_ACTION = 'ADD_PRAC';
  static const _UPDATE_PRAC_ACTION = 'UPDATE_PRAC';
  static const _DELETE_PRAC_ACTION = 'DELETE_PRAC';

  static Future<List<Practica>> getPractices() async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = _GET_ALL_ACTION;
      final response = await http.post(Uri.parse(ROOT), body: map);
      print('getPractices Response: ${response.body}');
      if (200 == response.statusCode) {
        List<Practica> list = parseResponse(response.body);
        return list;
      } else {
        return <Practica>[];
      }
    } catch (e) {
      return <Practica>[]; // return an empty list on exception/error
    }
  }

  static List<Practica> parseResponse(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Practica>((json) => Practica.fromJson(json)).toList();
  }

  // Method to add employee to the database...
  static Future<String> addPractice(String fecha, String dia, String horario, String carrera, String materia, String grupo, String docente, int alumnos, String software) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = _ADD_PRAC_ACTION;
      map['fecha'] = fecha;
      map['dia'] = dia;
      map['horario'] = horario;
      map['carrera'] = carrera;
      map['materia'] = materia;
      map['grupo'] = grupo;
      map['docente'] = docente;
      map['alumnos'] = alumnos;
      map['software'] = software;
      final response = await http.post(Uri.parse(ROOT), body: map);
      print('addPractice Response: ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "error";
      }
    } catch (e) {
      return "error";
    }
  }

  // Method to update an Employee in Database...
  static Future<String> updatePractice(String pracId, String fecha, String dia, String horario, String carrera, String materia, String grupo, String docente, int alumnos, String software) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = _UPDATE_PRAC_ACTION;
      map['prac_id'] = pracId;
      map['fecha'] = fecha;
      map['dia'] = dia;
      map['horario'] = horario;
      map['carrera'] = carrera;
      map['materia'] = materia;
      map['grupo'] = grupo;
      map['docente'] = docente;
      map['alumnos'] = alumnos;
      map['software'] = software;
      final response = await http.post(Uri.parse(ROOT), body: map);
      print('updatePractice Response: ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "error";
      }
    } catch (e) {
      return "error";
    }
  }

  // Method to Delete an Employee from Database...
  static Future<String> deletePractice(int pracId) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = _DELETE_PRAC_ACTION;
      map['id'] = pracId;
      final response = await http.post(Uri.parse(ROOT), body: map);
      print('deleteEmployee Response: ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "error";
      }
    } catch (e) {
      return "error"; // returning just an "error" string to keep this simple...
    }
  }
}