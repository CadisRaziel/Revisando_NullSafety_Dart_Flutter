import 'package:dart_nome_projeto/3_auto_promocao_tipos/carro_interface.dart';

//*Para usar a interface abstract utilizamos o 'implements'
class Gol implements Carro{
  //? repare que como criamos um metodo dentro da classe Carro
  //? por ser 'abstract' eu obrigatoriamente preciso coloca-lo aqui e rescrever com o codigo que precisamos
  @override
  int velocidadeMax() {
    return 200;
  }

  String tipoDeRodas(){
    return 'Esportiva';
  }

}