import 'dart:io';

void main(){

    // contando até 10 com while
    void contando10(){
        int i = 1;

        while( 10 >= i){
            print(i++);
        }
    }

    // contando numeros pares antes de 10
    void parAntes10(){
        int i = 1;

        while(i <= 10){
            if (i % 2 == 0){
                print(i);
            }
            i++;
        }

    }

    // 5 só que em forma descrecente
    void antes5(){
        int i = 5;

        do {
          print(i--);
        } while (i >= 1);

    }

    // contando de 1 até 100 e somando cada um deles
    void numerosCem(){

        int soma = 0;

        for(int i = 1; i <= 100; i++){
            soma += i;
            print(soma);

        }

    }

    // pegando os A de uma frase
    void fraseA(){

        String texto = "Marmelada de banana";

        for (int i = 0;i < texto.length;i++){
            String letraAtual = (texto[i]);
            if (letraAtual == 'a' || letraAtual == 'A'){
                print(letraAtual);
            }
        }
    }

    // inverter uma string
    void inverterString(){


        String texto = 'Minha mãe é uma fofa';
        int i = 0;

        for(int letras = 19; letras >= 0; letras--){
            print(texto[letras]);
        }


    }

    // invertendo uma frase soletrando
    void inverterSerto(){

        String texto = 'Minha mãe é uma fofa!';

        for(int letras = texto.length -1; letras >= 0; letras--){
            print(texto[letras]);
        }

    }

    // invertendo uma frase via string
    void inverterCorreto(){

        String texto = 'Gosto de bolo';
        String resultado = "";

        for(int letras = texto.length -1; letras >= 0; letras--){
            resultado = resultado + texto[letras];
        }

        print(resultado);
    }

    // meudeus esse codigo abaixo da horrível, desculpa
    // menu interativo com usuario
    void menu(){
        print('1 - Ver mensagem 2 - Ver outra mensagem 3 - Sair');
        List<String> comandos = <String>['1','2','3'];

        String texto1 = 'minecraft é muito bom';
        String texto2 = 'Adoro javascript';

        String? entrada = "";
        entrada = stdin.readLineSync();

        if(entrada == '1'){
            print(texto1);
        }

        if(entrada == '2'){
            print(texto2);
        } 

        if(entrada == '3'){
            exit(0);
        }

        if ( entrada == null || !comandos.contains(entrada)){
            print('Comando inválido');
            menu();
        }

    }

    // senha até acertar com if
    void senhaAcertar(){

        String? senha = 'senhasecreta';
        print('Digite a senha.Boa sorte');

        String? entrada = '';
        entrada = stdin.readLineSync()!;

        var letras = senha.length;

        if (entrada != senha){
            print('Senha incorreta. Tente novamente.');
            print('Dica: essa senha tem $letras letras');
            senhaAcertar();
        } else {
            print('Parabéns!');
            exit(0);
        }

    }

    // senha até acertar com do while
    void senhaCorreta(){
        String? senha = 'oleo123';
        
        String? entrada = '';

        do {
          print('Digite a senha');
          entrada = stdin.readLineSync();
          
        } while (senha != entrada);
        print('Parabéns, vc acertou.');

    }
    senhaCorreta();

}
