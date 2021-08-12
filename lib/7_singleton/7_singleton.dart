//?Classe Singleton -> è a ideia de um Design pattern é aonde tem uma unica instancia dessa classe por toda nossa aplicação
//?não importa a quantidade de vezes que eu criar ela, ela vai ser singleton 'UNICA'

import 'package:dart_nome_projeto/7_singleton/connection.dart';

void main(){
  //?Repare que quando chamamos a classe Connection mesmo atribuindo variavies diferentes, ela retorna o mesmo hashCode
  //*modelo static -Mais usado
  var con1 = Connection.instance;
  print(con1.hashCode);
  var con2 = Connection.instance;
  print(con2.hashCode);
  var con3 = Connection.instance;
  print(con3.hashCode);
  var con4 = Connection.instance;
  print(con4.hashCode);


  //*modelo factory -Menos usado
  //*Repare que o 'factory' nao podemos instanciar como o 'static'
  print(ConnectionFactory().hashCode);
  print(ConnectionFactory().hashCode);
  print(ConnectionFactory().hashCode);
  print(ConnectionFactory().hashCode);
  print(ConnectionFactory().hashCode);
  print(ConnectionFactory().hashCode);
  print(ConnectionFactory().hashCode);
  print(ConnectionFactory().hashCode);
  print(ConnectionFactory().hashCode);
  print(ConnectionFactory().hashCode);

  
}