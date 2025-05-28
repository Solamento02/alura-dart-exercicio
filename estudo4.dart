
void main(){

    // repetir de 1 até 5
    void repetir5(){

        for(int i = 1; i <= 5;i++){
            print(i);
        }
    }

    // nomes
    void nomesPessoas(){
        List<String> nomes = <String>['Ana','João','Maria'];
        String nome = "";

        for (nome in nomes){
            print('Nome: $nome');
        }
    }

    // codigo que para no '!'
    void paror(){

        String texto = 'Parou! Esse código não continua';
        int letras = 0;
        do {
            String letraAtual = (texto[letras]);
            print(letraAtual);
            if (letraAtual == '!'){
                break;
            }
                letras++;
        } while(letras < texto.length);

    }
    

}
