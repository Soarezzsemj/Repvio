import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// Importe o seu provider (ajuste o caminho se necessário)
import 'features/students/providers/students_provider.dart';
import 'features/students/presentation/pages/students_page.dart';

void main() {
  runApp(
    // O Provider precisa estar AQUI, no topo de tudo
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => StudentsProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Repvio',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const StudentsPage(),
    );
  }
}