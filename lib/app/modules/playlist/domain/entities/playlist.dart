enum Status {
  ativo,
  inativo,
}

class Playlist {
  String nome;
  Status status;

  Playlist({this.nome, this.status});

  Map<String, dynamic> toMap() => {
        'nome': nome,
        'status': status.toString(),
      };

  factory Playlist.fromJson(Map<String, dynamic> json) {
    return Playlist(nome: json['nome'], status: json['status']);
  }
}
