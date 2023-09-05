// aqui farei a tela principal, onde mostra a lista de tarefas.

import 'package:flutter/material.dart';
import 'package:to_do_list/src/shared/app_bar.dart';

class MyHome extends StatelessWidget {
  const MyHome({required this.nomeapp, super.key});

  final String nomeapp;

  @override
  Widget build(BuildContext context) {
    var background = 'images/background/home.jpg';

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Image.asset(
            background,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Center (
            child: Column(
              children: [
                MyAppBar(
                  title: Text(
                    'Example title',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .titleLarge,
                  ),
                ),
                const Expanded(
                  child: Center(
                    // child: Text('Hello, world!'),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}