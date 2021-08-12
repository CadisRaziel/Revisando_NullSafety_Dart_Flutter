void main(){
  String? nomeCompleto;

  //*Tradicionalmente para por o toUpperCase fariamos assim
  if(nomeCompleto != null){
    print(nomeCompleto.toUpperCase());
  }

  //*Null Aware (O CORRETO A SE FAZER)
  //*Resumo -> Ele executa um metodo somente se o valor não for nullo, se for nullo ele não executa
  //*OBS -> repare que tradicionalmente colocariamos '!'
  print(nomeCompleto?.toLowerCase() ?? 'Nome não preenchido');

  //* Operador '??' -> valor por default, ele atribui um valor caso a variavel seja nulla
  //* Resumo -> se esses valores 'nomeCompleto?.toLowerCase()' retornar nullo ele executa o 'Nome não permitido'

  //Outro exemplo -> imagine que exista uma variavel que pega dados do banco de dados
  //o text não aceita nullo, então temos que sempre fazer essa operação por garantia
  //*Text(nomeCompleto ?? '');

  //!Geralmente nós estamos fazendo assim
  //Afirmando que nunca terá nulo, porém isso é perigoso
  //*Text(nomeCompleto!)


  //?Curiosidade, no javascript o ?? é o ||
}