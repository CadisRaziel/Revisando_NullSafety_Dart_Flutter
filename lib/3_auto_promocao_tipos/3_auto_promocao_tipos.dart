import 'package:dart_nome_projeto/3_auto_promocao_tipos/gol.dart';
import 'package:dart_nome_projeto/3_auto_promocao_tipos/uno.dart';

import 'carro_interface.dart';

void main(){
  var uno = Uno();
  var gol = Gol();

  //*golCarro -> só esta acessando os metodos e variaveis da 'interface' mesmo sendo um 'Gol'
  //*com isso ela não consegue acessar o metodo 'tipoDeRodas' que esta na classe 'Gol'
  Carro golCarro = Gol();

  //*repare como a 'golCarro' nao consegue acessar o 'tipoDeRodas'
  print(gol.tipoDeRodas());
  print(golCarro); // <- se eu tentar colocar o '.tipoDeRodas() ele não aceita !!


  //*Porém podemos usar da arte manha do dart e fazer o seguinte para o 'golCarro' acessar o metodo da classe 'Gol'
  //*Veja abaixo

  //*o Dart nos possibilita que a interface consiga acessar o metodo de uma classe comun dessa forma
  //*Isso se chama 'Cast'
  //*Porém isso só é possivel porque o 'Gol' é filho de 'Carros'
  var tipoRodas = (golCarro as Gol).tipoDeRodas();

  //! Fazendo um if, e utilizando o [is] eu transformo a variavel 'golCarro' em uma promocao de tipo
  //! na Doc ele diz uma boa pratica utilizar o [if] e o [is]
  if(golCarro is Gol){
    //! aqui o dart fez a promocao de tipo por causa do [is] 'golCarro is Gol' na verificação
    print((golCarro).tipoDeRodas());

    //!Repare que o dart ja me avisa que eu nao preciso colocar esse Cast 'golCarro as Gol'
    //!Cast -> [as]
    print((golCarro as Gol).tipoDeRodas());
  }
    

  printarDadosCarro(uno);
  printarDadosCarro(gol);
  printarDadosCarro(golCarro);
}

void printarDadosCarro(Carro carro){
  print('''
    carro: ${carro.runtimeType}
      Velocidade Maxima: ${carro.velocidadeMax()}
  ''');
}

//* Lembrando que para colocar frases com quebra de linha colocamos o print da forma acima ''' '''
//* Promoção de tipo -> [is], utilizar com um [if]
//* Cast -> [as]