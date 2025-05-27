import 'dart:io';

// lista de exercícios com switchcase

void main(){

    // calculando idade para carteira de motorista
    void detran(){
        print('Bem vindo ao Detran, qual sua idade?');
        String? entrada = stdin.readLineSync();
        
        int idade = 0;

        if (entrada != null && entrada != ""){
            idade = int.parse(entrada);
        } else {
            print('Digite um número válido!');
        }

        if (idade >= 18){
            print('Você tem idade para dirigir!');
        } else {
            print('Você não tem idade para dirigir.');
        }

    }

    // meses do ano
    void meses(){
        print('Escreva um número de um mês do ano');
        String? entrada = stdin.readLineSync()!;

        switch(entrada){
            case '1':
            print('Janeiro');

            case '2':
            print('Fevereiro');
            
            case '3':
            print('Março');

            case '4':
            print('Abril');

            case '5':
            print('Maio');

            case '6':
            print('Junho');

            case '7':
            print('Julho');

            case '8':
            print('Agosto');

            case '9':
            print('Setembro');

            case '10':
            print('Outubro');

            case '11':
            print('Novembro');

            case '12':
            print('Dezembro');


        }
    }


    // verificando saldo de conta
    void verificarsaldo() {

    double saldo = 10;
    print('Boas-vindas ao seu banco digital!');
    print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

    print('Digite o valor do Pix que deseja realizar:');
    double valorPix = double.parse(stdin.readLineSync()!);

    if (valorPix <= saldo){
        print(saldo - valorPix);
    } else {
        print('Saldo insuficiente');
    }


    }

    // verificando idaide países diferentes
    void paisesverificar(){
        print('Digite sua idade');
        int idade = int.parse(stdin.readLineSync()!);
        print('Digite seu país');
        String pais = stdin.readLineSync()!;

        if(idade >= 18 && pais=='Brasil'){
            print('Você é do brasil, e pode dirigir');
        } else if (idade >= 16 && pais == 'EUA') {
            print('Você é dos estados Unidos e pode dirigir');
        } else if (idade >= 20 && pais=='Japão'){
            print('Você é do Japão e pode dirigir');
        } else {
            print('Você não pode dirigir');
        }
    }

}
