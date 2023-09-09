class Tarefa {
  bool? _status;
  String? _descricao;

  Tarefa(this._status, this._descricao);

  bool get status => _status!;
  String get descricao => _descricao!;

  void setStatus(bool status) => _status = status;
  void setDescricao(String descricao) => _descricao = descricao;

  Tarefa.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _descricao = json['descricao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = _status;
    data['descricao'] = _descricao;
    return data;
  }
}
