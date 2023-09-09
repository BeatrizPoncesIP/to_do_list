// aqui farei a tela principal, onde mostra a lista de tarefas.

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

// Essas duas classes existem por conta de arquitetura de programação, por causa de closer.
// ignore_for_file: use_key_in_widget_constructors

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHome> {
  static const String nome = 'To-Do App'; // nome do aplicativo
  final TextEditingController taskController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(nome),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Form(
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: taskController,
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.black87,
                      ),
                      decoration: const InputDecoration(
                        hintText: "Nova Tarefa",
                        hintStyle: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      onPressed: () {
                        print("Botão");
                        print(taskController.text);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
