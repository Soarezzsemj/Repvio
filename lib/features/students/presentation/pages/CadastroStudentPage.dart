import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/students_provider.dart';

class CadastroStudentPage extends StatelessWidget {
  const CadastroStudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Controlador para capturar o texto digitado no campo de nome
    final nameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Novo Aluno")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Campo de entrada de texto para o nome do aluno
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(labelText: "Nome do Aluno"),
            ),
            const SizedBox(height: 20),
            // Botão para disparar a ação de salvamento
            ElevatedButton(
              onPressed: () {
                // Validação simples para não salvar nomes vazios
                if (nameController.text.isNotEmpty) {
                  // 1. Instancia o modelo com os dados capturados
                  final novoAluno = StudentModel(
                    id: DateTime.now().toString(), // Gera um ID temporário baseado na hora
                    name: nameController.text,
                  );

                  // 2. Registra o aluno no Provider (usa listen: false por estar dentro de uma função)
                  context.read<StudentsProvider>().addStudent(novoAluno);

                  // 3. Fecha a tela de cadastro e retorna à lista
                  Navigator.pop(context);
                }
              },
              child: const Text("Salvar Aluno"),
            ),
          ],
        ),
      ),
    );
  }
}