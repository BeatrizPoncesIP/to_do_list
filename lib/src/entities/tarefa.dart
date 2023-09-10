import 'package:isar/isar.dart';
import 'package:to_do_list/src/entities/user.dart';

part 'tarefa.g.dart';

@Collection()
class Tarefa {
  Id id = Isar.autoIncrement;
  late bool _status;
  late String _descricao;

  @Backlink(to: "tarefas")
  final user = IsarLink<User>();
}
