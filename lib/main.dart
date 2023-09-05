import 'package:flutter/material.dart';
import 'package:to_do_list/src/pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String nome = 'To-Do App'; // nome do aplicativo
    return MaterialApp(
      title: nome,
      home: SafeArea( // Um widget evita invasões do sistema operacional.
        child: MyHome(nomeapp: nome,),
      ),
    );
  }
}