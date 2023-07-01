import 'package:test_final_school_flutter_mjv/entities/issuesCheckList_entity.dart';

class IssueEntity {
  String uuid;
  String descricao;
  String nome;
  String nomeCliente;
  DateTime dataCriacao;
  bool? isConcluido;
  List<IssueslistEntity> lista;

  IssueEntity({
    required this.uuid,
    required this.descricao,
    required this.nome,
    required this.nomeCliente,
    required this.dataCriacao,
    this.isConcluido = false,
    this.lista = const [],
  });

  factory IssueEntity.fromJson(Map<String, dynamic> json) {
    return IssueEntity(
        uuid: json['uuid'],
        descricao: json['descricao'],
        nome: json['nome'],
        nomeCliente: json['nomeCliente'],
        dataCriacao: DateTime.fromMicrosecondsSinceEpoch(json['dataCriacao']),
        isConcluido: json['isConcluido']);
  }

  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'descricao': descricao,
      'nome': nome,
      'nomeCliente': nomeCliente,
      'dataCriacao': dataCriacao,
      'isConcluido': isConcluido,
    };
  }

  static List<IssueEntity> fromJsonList(List<dynamic>? json) {
    return json?.map((item) => IssueEntity.fromJson(item)).toList() ?? [];
  }
}
