void main(){
  String? nomeCompleto;

  //*Tradicionalmente para por o toUpperCase fariamos assim
  if(nomeCompleto != null){
    print(nomeCompleto.toUpperCase());
  }

  //*Null Aware [?.]
  //*Resumo -> Ele executa um metodo somente se o valor não for nullo, se for nullo ele não executa
  //*OBS -> repare que tradicionalmente colocariamos [!] (ficaria assim: print(nomeCompleto!.toLowerCase());
  print(nomeCompleto?.toLowerCase());

  //! O [?.] vai dizer que se o 'nomeCompleto' não for nullo é para executar o metodo toLowerCase
  //! se o 'nomeCompleto' for nullo ele retorna apenas 'null'
  //! tome cuidado !
}