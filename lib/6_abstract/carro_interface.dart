abstract class Carro {
  //*A classe abstract(interface) nao precisa ser inicializada as variaveis pois ela não é uma classe concreta e sim uma interface
  //*Lembrando interface não tem valores, apenas estrutura

  //? com isso colocando abstract na variavel, ele faz o mesmo com que os metodos
  //? ele obriga as classes que herdam essa interface a colocar essas variaveis assim como os metodos
  abstract int portas;
  abstract int rodas;
  abstract String motor;

  int velocidadeMaxima();

}

//*abstract -> no Dart não tem interface, no lugar temos o abstract(porém usamos o abstract para fazer interface)
//*Nela não tem metodos implementados