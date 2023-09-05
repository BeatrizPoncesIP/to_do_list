import 'package:flutter/material.dart';
import 'package:to_do_list/src/pages/home/home.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'To-Do App', // nome do aplicativo
      home: SafeArea( // Um widget evita invasões do sistema operacional.
        child: MyScaffold(),
      ),
    ),
  );
}