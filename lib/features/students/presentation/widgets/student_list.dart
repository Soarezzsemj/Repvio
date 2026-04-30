import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:repvio/features/students/presentation/widgets/student_title.dart';
import '../../providers/students_provider.dart';

class StudentList extends StatelessWidget {
  const StudentList({super.key});

  @override
  Widget build(BuildContext context) {
    // Escuta o Provider para atualizar a lista automaticamente
    final provider = context.watch<StudentsProvider>();
    final lista = provider.students;

    // Construtor de lista otimizado
    return ListView.builder(
      itemCount: lista.length,
      itemBuilder: (context, index) {
        // Seleciona o aluno atual da iteração
        final aluno = lista[index];

        // Retorna o componente visual do aluno (StudentTile)
        return StudentTile(student: aluno);
      },
    );
  }
}