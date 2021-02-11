class Musica {
  int id;
  int duracao;
  String nome;

  Musica({this.id, this.duracao, this.nome});

  Map<String, dynamic> toMap() => {
        'id': id,
        'duracao': duracao,
        'nome': nome,
      };

  factory Musica.fromJson(Map<String, dynamic> json) {
    return Musica(
      id: json['id'],
      duracao: json['duracao'],
      nome: json['nome'],
    );
  }
}
