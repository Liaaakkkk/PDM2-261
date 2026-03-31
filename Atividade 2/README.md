// Online Dart Editor for free
// Write, Edit and Run your Dart code using Dart Online Compiler

class Pilha {
  List<int> _dados = [];
  void empilhar(int valor) {
    _dados.add(valor);
    print("Numero $valor empilhado.");
  }
  void desempilhar() {
    if (_dados.isEmpty) {
      print("Pilha vazia!");
    } else {
      int removido = _dados.removeLast();
      print("Numero removido: $removido");
    }
  }
  void mostrarTopo() {
    if (_dados.isEmpty) {
      print("Pilha vazia!");
    } else {
      print("Topo da pilha: ${_dados.last}");
    }
  }
  void mostrarPilha() {
    if (_dados.isEmpty) {
      print("Pilha vazia!");
    } else {
      print("Numeros da pilha:");
      for (int i = _dados.length - 1; i >= 0; i--) {
        print(_dados[i]);
      }
    }
  }
}

void main() {
  Pilha pilha = Pilha();

  pilha.empilhar(1);
  pilha.empilhar(2);
  pilha.empilhar(3);

  pilha.mostrarPilha();

  pilha.mostrarTopo();

  pilha.desempilhar();

  pilha.mostrarPilha();
}