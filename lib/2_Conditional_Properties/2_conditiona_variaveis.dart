void main(){

  //*Fazendo a operação abaixo, eu posso atribuir um valor por default na variavel abaixo
  //*E utiliza-la normalmente apenas como 'nome'
  //! Porém ela deixam de ser nula !!!!
  String? nome;
  nome??= 'Vitor';

  print(nome);
}