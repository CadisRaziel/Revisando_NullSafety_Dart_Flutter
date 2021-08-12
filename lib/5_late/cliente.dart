
class Cliente {
  String nome;

  //*As 5 formas abaixo eu posso utilizar as variaveis acima não sendo nulas !

  //nomeado
  // Cliente({
  //   required this.nome,
  // });

  //nomeado valor default
  // Cliente({
  //   this.nome = '',
  // });

  //Não nomeado
  // Cliente(
  //   this.nome,
  // );

  //? Posso inicializar as variaveis globais dessa forma no constructor
  //*Inicialização
  // Cliente() : nome = 'vitor';

  //*Atribuição
  Cliente(String nomeCompleto) : nome = nomeCompleto;
}


class Cliente2 {
  //?para conseguirmos inicializar variaveis não nulas privadas
  //?com isso ela não é acessada por algum lugar que não deveria

  final String _nome;

  Cliente2({required String nome}) : _nome = nome;

}


//?Variaveis privadas e construtores para classes Pai e Filho


class Animal {
  String tipo;
  Animal(this.tipo);
}


class Dog extends Animal {
  final int _idade;
  final String _nome;
  final String _raca;

  Dog({
    required int idade,
    required String nome,
    required String raca,
  }) : 
  _idade = idade,
  _nome = nome,
  _raca = raca,
  
  //?precisamos inicializar a chamada delas antes do super
  super('dog');

}