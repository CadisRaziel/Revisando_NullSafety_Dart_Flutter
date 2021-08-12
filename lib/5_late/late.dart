
//!CUIDADO O LATE È PERIGOSO DE SE UTILIZAR !!!!
//*Ela é perigosa porque, o compilador do DART deixou de ENTENDER se ela é NULLA OU NÃO
//*O compilador tambem não sabe quando ela sera inicializada

late String nome;
//*O late vai dizer que eu vou inicializar o 'nome' depois
//*Lembre-se variaveis de nivel superior precisa ser inicializada ou declarada nula, porém o late permite tudo

//?Olha que bizzaro
//*variaveis FINAL precisa ser inicializada ou declarada nulo e depois de atribuidas em uma classe ou metodo nao pode ser reatribuida
//*Porém com o late pode ser nao ser inicializada porém so pode ser atribuida 1 vez
late final String nome2;

void main(){
  //? Late é utilizado em atributos e classes e variaveis de niveis superiores

  //?Repare que ele deixou eu colocar um metodo nessa variavel mesmo saber se ela é nulla ou não, ISSO É PERIGOSO !!
  print(nome.toLowerCase());   

  print(nome2.toLowerCase());
}