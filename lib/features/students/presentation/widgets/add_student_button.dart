import 'package:flutter/material.dart';
import '../pages/CadastroStudentPage.dart';

class StudentButton extends StatelessWidget {
  const StudentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blue,
      // Ícone visual do botão (Adicionar)
      child: const Icon(Icons.add, color: Colors.white),
      onPressed: () {
        // Aciona a navegação para a tela de formulário
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CadastroStudentPage()),
        );
      },
    );
  }
}