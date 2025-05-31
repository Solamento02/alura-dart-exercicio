import { input, select} from '@inquirer/prompts';


function soma(){
    var a = 12;
    var b = 13;
    total = a + b;
    console.log(`A soma de ${a} e ${b} é ${total}`);
}

function temperatura(){

    async function opcoes(){
        const respostas1 = await select({
            message: 'Bem-vindo ao programa, escolha',
            choices: [
                {
                    name:'Celsius para Fahrenheit',
                    value: 1,
                    description:'Converta',
                },
                {
                    name:'Fahrenheit para Celsius',
                    value: 2,
                    description: 'Converta',
                },
                {
                    name:'Sair',
                    value: 3,
                    description: 'Bye',
                }
            ],
        });

            if(respostas1 === 3){
                process.exit(0);
            }

            async function perguntas(){
            const pergunta = await input({
                message: 'Digite seu valor',
            });

            if(respostas1 === 1){
                CparaF();
                temperatura();
            } else if(respostas1 === 2){
                FparaC();
                temperatura();
            } 

          
            function CparaF(){
                var somando = (pergunta * 9/5) + 32;
                console.log(`O seu valor em Fahrenheit é ${somando}`); 
            }

            function FparaC(){
                var somando = (pergunta - 32) * 5/9;
                console.log(`O seu valor em Celsius é ${somando}`);
            }
        }
        
        perguntas();

    }
    opcoes();
}

function temperaturaCelsius(){

    async function primeiro(){
        const pergunta = await input({
            message: 'Digite sua tempº em Celsius que eu faço a conversão para Fahrenheit',
        });
    

        function calculo(){
            var somando = (pergunta * 9/5) + 32
            console.log(somando);
        }
        calculo();
    }

    primeiro();


}

function falar(){

    async function inquirer(){
        const nome = await input({
            message:'Qual seu nome?',
            default:'Usuário',
    });

    console.log(`Olá ${nome}`);

    }

    inquirer();

}

temperatura();
