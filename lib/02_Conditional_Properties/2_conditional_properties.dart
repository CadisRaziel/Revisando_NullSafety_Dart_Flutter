void main(){
  String? nome; 

  //! posso atribuir um valor default a 'String? nome;'
  // nome ??= 'Vitor';
  //Isso é a mesma coisa que fazer o ?? abaixo
  //! Porém ela deixam de ser nula !!!!


  //*nome?.toLowerCase -> o [?.] é o Null Aware Operator, estamos unindo ele com o Conditional Properties [??]

  print(nome?.toLowerCase() ?? 'Nome não preenchido');

  //* Conditional Properties [??] -> valor por default, ele atribui um valor caso a variavel seja nulla
  //* Resumo -> se esses valores 'nomeCompleto?.toLowerCase()' retornar nullo ele executa o 'Nome não permitido'

  //Outro exemplo -> imagine que exista uma variavel que pega dados do banco de dados
  //o text não aceita nullo, então temos que sempre fazer essa operação por garantia
  //*Text(nomeCompleto ?? '');

  //!Geralmente nós estamos fazendo assim
  //Afirmando que nunca terá nulo, porém isso é perigoso
  //*Text(nomeCompleto!)


  //?Curiosidade, no javascript o ?? é o || 
}