import 'dart:io';

void main(){

  // calcule o dobro de um numero
  void dobro(){
    print('Digite um número');
    var numero = stdin.readLineSync();
    var doubro = int.parse(numero!) * 2;
    print('O dobro de $numero é $doubro');
  }

  // calcule a media de 3 numeros
  void media(){
    print('Vamos calcular a média de 3 pessoas');
    print('Digite a idade da primeira pessoa:');
    var pessoa1 = stdin.readLineSync();
    print('Digite a idade da segunda pessoa:');
    var pessoa2 = stdin.readLineSync();
    print('Digite a idade da terceira pessoa:');
    var pessoa3 = stdin.readLineSync();

    var somando = int.parse(pessoa1!) + int.parse(pessoa2!) + int.parse(pessoa3!);
    var mediatudo = somando / 3;

    print('A média das idades é $mediatudo');
  }

  // faça um formulario
  void fichaParticipante(){
    print('Digite seu nome');
    var nome = stdin.readLineSync();
    print('Digite seu CPF');
    var cpf = stdin.readLineSync();
    print('Digite sua idade');
    var idade = stdin.readLineSync();
    print('Digite sua altura');
    var altura = stdin.readLineSync();
    print('Você participa da comunidade? Responda sim ou não');
    var comunidade = stdin.readLineSync();


    print('Certo, agora irei repetir!');
    print('Seu nome é $nome');
    print('Você tem $idade anos');
    print('Essa é sua $altura altura');
    print('Seu CPF é $cpf');

    if(comunidade!.contains('sim')) {
      print('Você faz parte da comunidade');
    } else {
      print('Você não faz parte da comunidade');
    }
  }


  // calculando salario
  void horasTrabalhadas(){
    print('Digite o número de horas trabalhadas');
    var horas = stdin.readLineSync();
    var junto = int.parse(horas!) * 50;
    var subtraindo = junto * 5 / 100;
    var total = junto - subtraindo;

    print('O salário é de $total');
  }
  
  // tarefa banco fake
  void bancofake() {

  String saldo = '1000.0';

    print('Boas-vindas ao seu banco digital!');
    print('Seu saldo atual é de: Dinheiro $saldo ');

    print('Digite o valor do Pix que deseja realizar:');
    var valorPix = stdin.readLineSync();

    var saldoBanco = double.parse(saldo) - double.parse(valorPix!);

    print('Pix realizado com sucesso!');
    print('Seu saldo atual é de: Dinheiro: $saldoBanco');
  }

  // esse primeiro e segundo são mesmo do clube de pontos
  void primeiro(){
    double pontosIniciais = 100;

    print("Você tem $pontosIniciais pontos.");
    print("Quantos pontos você gostaria de resgatar?");
    var resgatar = stdin.readLineSync();

    var pontosRestantes = pontosIniciais - double.parse(resgatar!);

    print("Você resgatou $resgatar pontos. Pontos restantes: $pontosRestantes.");
  }

  void segundo(){
    double pontosIniciais = 100;

    print("Você tem $pontosIniciais pontos.");
    print("Quantos pontos você gostaria de resgatar?");
    var escrita_user = stdin.readLineSync();

    double pontosRetirados = double.parse(escrita_user!);
    
    double pontosRestantes = pontosIniciais - pontosRetirados;

    print("Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantes.");
  }

  void cupom(){
    print('Digite o quanto você gastou em compras.Se tiver comprado acima de 50 reais.');
    var usuario_escreve = stdin.readLineSync();
    int converter = int.parse(usuario_escreve!);
    var valor = converter ~/ 50;

    print('Você tem $valor cupons!');


  }

}
