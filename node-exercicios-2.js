import { select, input, checkbox } from '@inquirer/prompts';

let tasks = [];

function blocoNotas(){

	async function menu(){
		const opcoes = await select({
			choices: [
				{
					name:'Escreva uma tarefa',
					value: '1',
					description:'Escreva a tarefa que você deseja adicionar',
				},
				{
					name:'Listar tarefa',
					value: '2',
					description:'Veja as tarefa que você salvou',
				},
				{
					name:'Sair',
					value: '3',
					description:'Até mais',
				}
			],
		});

		async function entrada(){
			const escrevendo = await input({
				message: 'Escreva sua tarefa',
			});

			if(opcoes === '1'){
				tasks.push(escrevendo)
				console.log('Adicionado!')
				blocoNotas();
			}



		}

		entrada();
	}

	menu();
}

blocoNotas();
