import 'package:flutter/material.dart';
import 'package:to_do_list/pages/feed_page.dart';
import 'package:to_do_list/pages/todo_page.dart';
import 'package:to_do_list/widgets/auth_check.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> list =
      <String, WidgetBuilder>{
    '/todos/list': (_) => const ToDoPage(),
    '/feed': (_) => const FeedPage(),
    '/auth-check': (_) => const AuthCheck(),
  };

  static String initial = '/todos/list';

  static String authCheck = '/auth-check';

  static GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();

  static NavigatorState to = Routes.navigatorKey!.currentState!;
}
