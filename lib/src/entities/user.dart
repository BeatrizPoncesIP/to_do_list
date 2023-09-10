import 'package:isar/isar.dart';
import 'package:to_do_list/src/entities/tarefa.dart';

part 'user.g.dart';

@Collection()
class User {
  Id id = Isar.autoIncrement;
  late String _nome;
  late String _email;
  late String _senha;
  final tarefas = IsarLinks<Tarefa>();
}
