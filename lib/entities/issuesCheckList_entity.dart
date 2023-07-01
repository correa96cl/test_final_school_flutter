class IssueslistEntity{
  String descricao;
  bool isConcluido;

  IssueslistEntity({required this.descricao, this.isConcluido = false});
  Map<String, dynamic> toJson() {
    return {
      'isConcluido': isConcluido,
      'descricao': descricao,
    };
  }

  factory IssueslistEntity.fromJson(Map<String, dynamic> json) {
    return IssueslistEntity(
      descricao: json['descricao'],
      isConcluido: json['isConcluido'],
    );
  }

  static List<IssueslistEntity> fromJsonList(List<dynamic>? json) {
    return json?.map((e) => IssueslistEntity.fromJson(e)).toList() ?? [];
  }

}