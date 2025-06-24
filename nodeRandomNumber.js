import { select } from '@inquirer/prompts';

function randomNumber(){

    async function escolha(){
        const answer = await select({
            message: 'Bem vindo ao programa, escolha',
            choices: [
                {
                    name:'Gere um número aleatório',
                    value: 1,
                    description:'Gere'
                },
                {
                    name:'Sair do programa',
                    value: 2,
                    description:'sair'
                }
            ]
        });

        function gerar(){
            console.log(Math.floor(Math.random() * 100));
        }

        if(answer === 1){
            gerar();
            escolha();
        } else if(answer === 2){
            process.exit(0)
        }

    }
escolha();

}

randomNumber();
