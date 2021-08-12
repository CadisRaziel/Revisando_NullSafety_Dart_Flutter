
//? Algumas observações sobre o nullSafety

//*Variaveis de nivel superior ou seja globais, o dart não permite que seja nullo, com isso devemos atribuir o ? ou valor
//*superior ou globais -> fora de metodos, classes etc...
import 'package:dart_nome_projeto/4_null_safety/client.dart';

String? variavelGlobalSuperiorOpcional;
String variavelGlobalSuperiorValorAtribuido = '';

void main(){
  //*Variaveis locais não precisamos dizer que são nulas
  //*Pois dentro do metodo o dart reconhece que podemos utiliza-la mais pra frente (em classes nao da certo)
  //*Porém caso utiilzar metodos ou trabalhar com ela lembre-se de atribui-la se nao vai dar erro de nullSafety
  String variavelLocal;

  //!cuidado a ser tomado nas variaveis LOCAIS
  //!se eu crio uma variavel local Nula e logo depois eu atribuo valor a ela
  //! ela deixa de ser nula !!!!
  //*Mesmo o nome sendo declarado como nulo, se ela for uma variavel local e atribuimos valor, ela deixa de ser nula
  String? nome;
  nome = 'Vitor';

  //! se eu fizer uma checagem com o [if] ela tambem é promovida para nao nula
  if(nome != null){
    nome.toLowerCase();
  }
  
  //? OBS -> VARIAVEIS DE CLASSES E NIVEIS SUPERIORES(GLOBAIS) ELAS NÃO SÃO AUTO PROMOVIDAS !!!!!!!
  //? APENAS VARIAVEIS LOCAIS SÃO AUTO PROMOVIDAS


  //*************************************************************************************************************************** */

  //*Realizando a verificação com [!]
  //* ! -> estamos dando certeza ao dart que a variavel não é nulla, com isso estamos pondo nossa conta em risco
  //* sempre que possivel ao colocar [!] utilize um if de comparação igual abaixo
  if(variavelGlobalSuperiorOpcional != null){
    variavelGlobalSuperiorOpcional!.toLowerCase();
  }

  //*ou para não forçar o [!] para variaveis globais, fazemso o seguinte
  //*nós transformandos aqui a variavel global em local 
  var variavel = variavelGlobalSuperiorOpcional;
  if(variavel != null){
    variavel.toLowerCase();
  }

//*************************************************************************************************************************** */

  //*Instanciando a classe cliente
  var cliente = Client();

  //?modo menos correto
  //assim é mais seguro utilizar o [!]
  if(cliente.name != null){
    print(cliente.name!.toLowerCase());
  }

  //?modo correto e seguro
  //ou para ter mais segurança ainda tiramos o [if] e trocamos o [!] pelo [?] e [??]  
  //é mais utilizado pelos devs experientes
    print(cliente.name?.toLowerCase() ?? 'nome não informado');

  //?modo correto
  //Podemos transformar o cliente em variavel local tambem
  //caso for nulo ele não retorna nada, nem erro
  var cliente2 = Client();
  var nomeCliente = cliente2.name;
  if(nomeCliente != null){
    print(nomeCliente.toLowerCase());
  }
  //*Ou posso fazer o exemplo acima dessa forma
  var cliente3 = Client();
  var nomeCliente3 = cliente3.name;
  print(nomeCliente3?.toLowerCase() ?? 'Nome não informado');
  
  //?modo perigoso
  //fazendo só assim é perigoso
  print(cliente.name!.toLowerCase());

  //***************************************************************************************************************************

  var lista = <String>[];
  //!não pode
  // lista.add(null);
  //*Pode
  // lista.add('null');

  var listaNaoNulaPoremItemNull = <String?>[];
  //*Pode
  // listaNaoNulaPoremItemNull.add(null);


  List<String>? listaComNUll;
  //!não pode
  // listaComNUll = [null];
  //*Pode
  // listaComNUll = ['null'];


    List<String?>? ListaPodeSerNullaEoTipoNull;
  //!pode tudo
  // ListaPodeSerNullaEoTipoNull = null;
  // ListaPodeSerNullaEoTipoNull = []; //!-> quando eu faço isso primeiro, ele da uma promoção de tipo na lista
  // ListaPodeSerNullaEoTipoNull.add(null); //! -> permitindo eu fazer essa operação add


  //?Forma de escrever a lista
  //*forma correta, porém essa forma é correta apenas quando a lista NÃO tiver NULOS !!!!
  var lista1 = <String>[];

  //*Se a lista tiver nulos
  List<String>? listaComNUll1;


  //***************************************************************************************************************************

  //*Map, chave, valor não nulos
  Map<String, dynamic> mapa = <String, dynamic>{};

  //*Apenas o map nullo
  Map<String, dynamic>? map;

  //*Apenas a chave nulla
  Map<String?, String> map1 = {};

  //*Apenas o valor nullo
  Map<String, String?> map2 = {};

  //*Apenas chave e valor nullo
  Map<String?, String?> map3 = {};
}

//***************************************************************************************************************************

//!CERTO -PARAMETRO NOMEADO PODE SER ATRIBUIDO O NULO- *Mais utilizado*
//*agora caso for nomeado pode ser nulo
void teste({String? name}){

}

//!CERTO -PARAMETRO OPCIONAL PODE SER ATRIBUIDO O NULO-
//*agora caso for opcional pode ser nulo
void test2([String? name]){

}


//!CERTO -PARAMETRO NOMEADO COM VALOR POR DEFAULT-
//*Escolha ter valores por default em seus parametros nomeados
void teste4({String nome = ''}){

}


//!ERRADO -PARAMETRO NOMEADO NULO COM REQUIRED-
//*não coloque required em variaveis nulas que estejam dentro de parametros nomeadas
//*na lógica ele deixa de ser nomeado opcional
void teste3({required String? name}){

}

//!ERRADO -PARAMETRO OBRIGATORIO NÂO DEVE SER NULO-
//*Em funçoes com parametros obrigatorio nunca deixe eles nulos
void teste1(String? nome){
  //*Nunca faça uma função com parametro obritario NULLO !!
}

//***************************************************************************************************************************

