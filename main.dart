import 'dart:io';

void main() {
  print("Operações possiveis: ");

  List<String> operacoes = ['1 Gravar novo "username".'
                    , '2 Ler todos os "usernames" gravados.'
                    , '3 Editar "username" existente.'
                    , '4 Deletar algum "username" existente.'
                    , '5 Sair.'];
  List<String> listUsers = ['Default'];
  listUsers.removeAt(0);
  int? cmd;
  
  do{
    for(String operacao in operacoes){
      print(operacao);
    }
    print('Digite:');
    String input = stdin.readLineSync() ?? '';
    cmd = int.tryParse(input);
    
    switch(cmd){
      case 1:
        print('Adicione um novo user:');
        String? newUser = stdin.readLineSync();
        if(newUser != null)
          listUsers.add(newUser);
        print('$newUser foi adicionado a Lista de Usernames.');
        break;
      case 2:
        print('Lista de Usernames:');
        for(String user in listUsers){
          print(user);          
        }
        break;
      case 3:
        if(listUsers.length == 0){
          print('Adicione um User para editar!');
          break;
        }
        print('Escolha um user para aditar:');
        for(int i = 0; i < listUsers.length; i++){
          print('$i ${listUsers[i]}');          
        }
        String inputIndex = stdin.readLineSync() ?? '';
        int? index = int.parse(inputIndex);
        if(index >= listUsers.length){
          print('Valor invalido!');
          break;
        }
        print('Digite o novo valor:');
        String newValue = stdin.readLineSync() ?? '';
        listUsers[index] = newValue;
        break;
      case 4:
        if(listUsers.length == 0){
          print('Adicione um User para remover depois!');
          break;
        }
        print('Escolha um user para remover:');
        for(int i = 0; i < listUsers.length; i++){
          print('$i ${listUsers[i]}');          
        }
        String inputIndex = stdin.readLineSync() ?? '';
        int? index = int.parse(inputIndex);
        if(index >= listUsers.length){
          print('Valor invalido!');
          break;
        }else
          listUsers.removeAt(index);
        
        break;
      case 5:
        break;
    }
  }
  while(cmd != 5);
  
}


