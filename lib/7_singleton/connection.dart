//*Simulando uma conexão com sqlite


class Connection {

  //!Podemos construir com metodos 'static'

  //*Atributo que transforma essa classe em Singleton
  static Connection? _instance;

  //*Construtor privado
  Connection._();

  static Connection get instance {
    _instance ??= Connection._();

    //*Com isso quando chegar no return abaixo ele nunca será nullo
    return _instance!;

    //?Com isso sempre que eu instanciar essa classe os 'returns' dela sempre vao retornar a mesma coisa
  }
}

class ConnectionFactory {
 //!Podemos construir com metodos 'factory'
  static ConnectionFactory? _instance;

  ConnectionFactory._();

  factory ConnectionFactory(){
    _instance ??= ConnectionFactory._();
    return _instance!;
  }
}