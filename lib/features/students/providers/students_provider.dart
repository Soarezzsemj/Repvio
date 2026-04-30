import 'package:flutter/material.dart';

// Modelo que define as propriedades do aluno
class StudentModel {
  final String id;
  final String name;
  final String? email;
  final DateTime createdAt;
  DateTime? lastWorkoutAt;
  final String? activeWorkoutId;
  final String? notes;

  StudentModel({
    required this.id,
    required this.name,
    this.email,
    DateTime? createdAt,
    this.lastWorkoutAt,
    this.activeWorkoutId,
    this.notes,
  }) : createdAt = createdAt ?? DateTime.now();
}

// Gerenciador de estado para a lista de alunos
class StudentsProvider with ChangeNotifier {
  final List<StudentModel> _students = [];

  // Disponibiliza a lista para leitura nas telas
  List<StudentModel> get students => _students;

  // Adiciona um aluno e atualiza a interface automaticamente
  void addStudent(StudentModel student) {
    _students.add(student);
    notifyListeners();
  }
}