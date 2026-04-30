import 'package:flutter/material.dart';
import 'package:repvio/features/students/presentation/widgets/student_list.dart';
import '../widgets/add_student_button.dart';

class StudentsPage extends StatelessWidget {
  const StudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Fundo levemente cinza para destacar os cards brancos da lista
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "Repvio",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        elevation: 0, // Remove a sombra para um visual mais flat/moderno
      ),
      // SafeArea evita que o conteúdo fique sob o entalhe (notch) do celular
      body: const SafeArea(
        child: StudentList(), // Componente que gerencia e exibe a lista de alunos
      ),
      // Botão flutuante posicionado para a ação principal (cadastrar)
      floatingActionButton: const StudentButton(),
    );
  }
}