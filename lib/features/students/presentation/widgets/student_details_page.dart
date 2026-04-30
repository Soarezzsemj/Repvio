import 'package:flutter/material.dart';
import '../../providers/students_provider.dart'; // Ajuste o path

class StudentDetailsPage extends StatelessWidget {
  // Mude para StudentModel
  final StudentModel student;

  const StudentDetailsPage({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ficha: ${student.name}"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blueAccent,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
            ),
            const SizedBox(height: 24),
            _buildInfoTile("Nome completo", student.name),
            _buildInfoTile("E-mail", student.email ?? "Não informado"),
            _buildInfoTile("ID do Sistema", student.id),
            _buildInfoTile("Observações", student.notes ?? "Sem notas"),
            const Divider(height: 40),
            Text(
              "Criado em: ${student.createdAt.day}/${student.createdAt.month}/${student.createdAt.year}",
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold)),
          Text(value, style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}