//*Para usar a interface abstract utilizamos o 'implements'
import 'package:dart_nome_projeto/6_abstract/carro_interface.dart';

class Gol implements Carro {
  //?assim que colcamos todos os atributos da interface que é abstract
  //?nos começamos a manipular as variaveis e metodos
  @override
  String motor = '2.0';

  @override
  int portas = 4;

  @override
  int rodas = 4;

  @override
  int velocidadeMaxima() {
    return 200;
  }
}
