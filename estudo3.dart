import 'dart:io';

void main(){
    
    // criar uma nova categoria
    void estoque(){

        String digite = "";

        List<String> categorias = <String>['eletronicos','alimentos','vestuario','livros'];

        print('Digite a categoria do produto ${categorias.toString()}');
        var entrada = stdin.readLineSync();

        if (entrada != null){
            if (categorias.contains(entrada)){
                digite = entrada;
                print('Categoria válida ${digite}');
            } else {
                print('Digite uma categoria válida');
                estoque();
            }
        }
    }

    void criarEstoque(){

        List<String> categorias = <String>['eletronicos','alimentos','vestuario','livros'];

        print('Digite a categoria que você deseja adicionar!');
        var entrada = stdin.readLineSync()!;
        categorias.add(entrada);
        print('Agora a lista é $categorias');

    }

    void upload(){

        var lista = ["pdf","jpg","png","docx"];

        print('Envie seu arquivo. Os arquivos aceitos aqui são: $lista');
        var entrada = stdin.readLineSync()!;
        var partes = entrada.split('.');
        var extensao = partes[partes.length -1 ];

        if(lista.contains(extensao)){
            print('Upload feito com sucesso!');
        } else {
            print('Valor inválido, tente novamente');
            upload();
        }

    }

        // meses do ano com recursao
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

            default:
                print('Digite um valor válido.');
                meses();
        } 
    }

    // banco para depositar
    void deposito(){

        var operacoes = ['deposito','retirada','transferencia','pagamento'];

        print('Digite uma operação $operacoes');

        String? entrada1 = "";
        String? entrada2 ="";

        void getFinal(){
            double numero = 0;
            entrada2 = stdin.readLineSync();
            if( entrada2 != null && entrada2 !=""){
                numero = double.parse(entrada2!);
                print('Operação escolhida: $entrada1, valor $numero');
            }
        }

        entrada1 = stdin.readLineSync();
        if(entrada1 != null){
            if (operacoes.contains(entrada1)){
                print('Digite o valor da operação');
                getFinal();
            } else {
                print('Entrada invalida. Digite uma das operações: $operacoes');
            }
        }

    }

    // validação pagamento
    void pagar(){

        var pagamentos = ["cartão","boleto","paypal","pix"];

        print('Olá, qual sua forma de pagamento?');
        print('Lembrando que as aceitas são: $pagamentos');
        String? entrada = "";

        void validar(){
            entrada = stdin.readLineSync()!;
            if (pagamentos.contains(entrada)){
                print('Ah! que legal você vai pagar em $entrada');
            } else {
                print('Insira uma forma de pagamento válida!');
            }
        }
    }

}
