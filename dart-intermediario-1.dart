

void main(){

    void listando(){

        var funcionarios = Map<String, int>();
        funcionarios['Joana'] = 1;
        funcionarios['Ricardo'] = 2;
        funcionarios['Roberto'] = 3;
        funcionarios['Chirstofer'] = 4;
        funcionarios['Joelma'] = 5;
        funcionarios['Armani'] = 6;


        void pares(funcionarios){
            var numeros = funcionarios.values;

            for(numeros in funcionarios.values){
                if(numeros %2 == 0){
                    print("Os IDs pares são: $numeros");
                }
            }

        }



    }

    // void supermercadoFrutas(){

    //     var frutas = Map<String, int>();
    //     frutas['maçã'] = 22;
    //     frutas['banana'] = 32;
    //     frutas['laranja'] = 40;
    //     frutas['abacaxi'] = 19;

    //     print('A quantidade de maçãs nesse supermercado é ${frutas['maçã']}');

    // }

    void supermercadoFrutas(){

        List<String> frutas = ['maçã','banana','maçã','laranja','maçã'];

        int contar = 0;

        for(int i = 0; i < frutas.length;i++){
            String palavraAtual = (frutas[i]);
            if (palavraAtual == 'maçã'){
                contar++;
            }
        }
        
        print('A quantidade de vezes que tem maçã no supermercado é $contar');


    }

    void lojaJoao(){

        List<String> produtosCarrinho = ["arroz", "feijão", "macarrão", "leite", "açúcar"]; 

        List<String> produtosVisitados = ["arroz", "feijão", "macarrão", "leite", "açúcar", "jaca","carne"];

        for(var visto in produtosVisitados){
            if(!produtosCarrinho.contains(visto)){
                print(visto);
            }
        }

        listando(); 

    }

}
