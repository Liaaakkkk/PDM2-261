
class Animal {
  String nome;

  Animal(this.nome);

  void emitirSom() {
    print("O animal faz um som");
  }
}

class Cachorro extends Animal {
  Cachorro(String nome) : super(nome);

  @override
  void emitirSom() {
    print("O cachorro late");
  }
}

class Gato extends Animal {
  Gato(String nome) : super(nome);

  @override
  void emitirSom() {
    print("O gato mia");
  }
}

void main() {
  var dog = Cachorro("Rex");
  var cat = Gato("Mimi");
  dog.emitirSom();
  cat.emitirSom();
}