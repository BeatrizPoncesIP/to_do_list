class Tarefa {
  bool _status; // true significa que já fez a tarefa
  String _descricao;

  bool get status => _status;
  String get descricao => _descricao;

  void setStatus(bool status) => _status = status;
  void setDescricao(String descricao) => _descricao = descricao;

  Tarefa(this._status, this._descricao);
}
