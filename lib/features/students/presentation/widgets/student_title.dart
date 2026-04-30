import 'package:flutter/material.dart';
import 'package:repvio/features/students/presentation/widgets/student_details_page.dart';
import '../../providers/students_provider.dart';

class StudentTile extends StatelessWidget {
  // Recebe o modelo de dados do aluno específico
  final StudentModel student;

  const StudentTile({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        // Ícone lateral com as iniciais ou avatar
        leading: const CircleAvatar(
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.person, color: Colors.white),
        ),
        // Nome do aluno em destaque
        title: Text(
          student.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        // Informações secundárias (ex: data do treino)
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text("Último treino: ${student.lastWorkoutAt?.day ?? '--'}/${student.lastWorkoutAt?.month ?? '--'}"),
          ],
        ),
        trailing: const Icon(Icons.chevron_right, color: Colors.grey),

        // Navegação para a ficha/detalhes do aluno ao tocar no card
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StudentDetailsPage(student: student),
            ),
          );
        },
      ),
    );
  }
}