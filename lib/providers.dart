import 'package:to_do_list/database/objectbox_database.dart';
import 'package:to_do_list/repositories/feed_repository.dart';
import 'package:to_do_list/repositories/todo_repository.dart';
import 'package:to_do_list/services/local_auth_service.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final providers = <SingleChildWidget>[
  Provider<LocalAuthService>(
    create: (context) => LocalAuthService(
      auth: LocalAuthentication(),
    ),
  ),
  ChangeNotifierProvider<PhotosRepository>(
    create: (context) => PhotosRepository(),
  ),
  Provider<ObjectBoxDatabase>(
    create: (context) => ObjectBoxDatabase(),
  ),
  ChangeNotifierProvider<ToDoRepository>(
    create: (context) => ToDoRepository(
      context.read(),
    ),
  ),
];
