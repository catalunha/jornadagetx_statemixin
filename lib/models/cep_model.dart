import 'dart:convert';

class CepModel {
  String cep;
  String logradouro;
  String cidade;
  String uf;
  CepModel({
    required this.cep,
    required this.logradouro,
    required this.cidade,
    required this.uf,
  });

  CepModel copyWith({
    String? cep,
    String? logradouro,
    String? cidade,
    String? uf,
  }) {
    return CepModel(
      cep: cep ?? this.cep,
      logradouro: logradouro ?? this.logradouro,
      cidade: cidade ?? this.cidade,
      uf: uf ?? this.uf,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'cep': cep});
    result.addAll({'logradouro': logradouro});
    result.addAll({'cidade': cidade});
    result.addAll({'uf': uf});

    return result;
  }

  factory CepModel.fromMap(Map<String, dynamic> map) {
    return CepModel(
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'] ?? '',
      cidade: map['cidade'] ?? '',
      uf: map['uf'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CepModel.fromJson(String source) =>
      CepModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CepModel(cep: $cep, logradouro: $logradouro, cidade: $cidade, uf: $uf)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CepModel &&
        other.cep == cep &&
        other.logradouro == logradouro &&
        other.cidade == cidade &&
        other.uf == uf;
  }

  @override
  int get hashCode {
    return cep.hashCode ^ logradouro.hashCode ^ cidade.hashCode ^ uf.hashCode;
  }
}
