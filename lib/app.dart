import 'package:flutter/material.dart';
import 'package:to_do_list/routes/routes.dart';

class App extends StatelessWidget {
  final MaterialColor colorSeed = Colors.deepPurple;

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Database Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: colorSeed,
      ),
      routes: Routes.list,
      initialRoute: Routes.authCheck,
      navigatorKey: Routes.navigatorKey,
    );
  }
}
