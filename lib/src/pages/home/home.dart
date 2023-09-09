// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:to_do_list/src/classes/tarefa.dart';

// Essas duas classes existem por conta de arquitetura de programação, por causa de closer.

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHome> {
  static const String nome = 'To-Do App'; // nome do aplicativo
  final TextEditingController taskController = TextEditingController();
  final GlobalKey<FormState> _FormKey = GlobalKey<FormState>();
  final List<Tarefa> _tasks = List<Tarefa>.empty(growable: true);

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
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Form(
                key: _FormKey,
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
                        validator: (value) {
                          if (value!.trim().isEmpty) {
                            return "Campo de tarefa é obrigatório";
                          }
                          return null;
                        },
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
                          if (_FormKey.currentState!.validate()) {
                            setState(() {
                              Tarefa newtask =
                                  Tarefa(false, taskController.text);
                              _tasks.add(newtask);
                            });
                            taskController.clear();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _tasks.length,
                itemBuilder: (context, index) {
                  var checkValue = _tasks[index].status;
                  return Card(
                    child: ListTile(
                      dense: false,
                      leading: Checkbox(
                        value: checkValue,
                        onChanged: (bool? value) {
                          setState(() {
                            checkValue = value!;
                            _tasks[index].setStatus(value);
                          });
                        },
                      ),
                      title: Text(_tasks[index].descricao),
                      selectedColor: Colors.red,
                      selected: _tasks[index].status,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
