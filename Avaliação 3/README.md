// Agregação e Composição
import 'dart:convert';

class Dependente {
  late String _nome;

  Dependente(String nome) {
    this._nome = nome;
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': _nome,
    };
  }
}

class Funcionario {
  late String _nome;
  late List<Dependente> _dependentes;

  Funcionario(String nome, List<Dependente> dependentes) {
    this._nome = nome;
    this._dependentes = dependentes;
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': _nome,
      'dependentes': _dependentes.map((d) => d.toJson()).toList(),
    };
  }
}

class EquipeProjeto {
  late String _nomeProjeto;
  late List<Funcionario> _funcionarios;

  EquipeProjeto(String nomeprojeto, List<Funcionario> funcionarios) {
    _nomeProjeto = nomeprojeto;
    _funcionarios = funcionarios;
  }

  Map<String, dynamic> toJson() {
    return {
      'nomeProjeto': _nomeProjeto,
      'funcionarios': _funcionarios.map((f) => f.toJson()).toList(),
    };
  }
}

void main() {
  var d1 = Dependente("Ana");
  var d2 = Dependente("Carlos");
  var d3 = Dependente("Marina");
  var d4 = Dependente("João");

  var f1 = Funcionario("Pedro", [d1, d2]);
  var f2 = Funcionario("Lucas", [d3]);
  var f3 = Funcionario("Fernanda", [d4]);

  List<Funcionario> funcionarios = [f1, f2, f3];

  var equipe = EquipeProjeto("Projeto X", funcionarios);

  String jsonString = JsonEncoder.withIndent('  ').convert(equipe.toJson());
  print(jsonString);
}