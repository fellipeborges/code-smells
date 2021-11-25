using System;
using System.Collections.Generic;
using System.Linq;

//============================================================================================
// Instruções
//  - Mostre a lista dos funcionários cujo nome começa com "a"
//============================================================================================

var lista = new List<Funcionario>
{
    new Funcionario{Nome = "João da Silva", Salario= 1021.37 },
    new Funcionario{Nome = "Maria Antonieta", Salario= 2215.87 },
    new Funcionario{Nome = "Fernando Matias", Salario= 1298.99 },
    new Funcionario{Nome = "Tatiane das Dores", Salario= 2211.12 }
};

// Filtra os funcionários para pegar apenas os que começam com "a"
lista = lista.Where(f => f.Nome.StartsWith("a")).ToList();

// Obtém a quantidade de usuários encontrados
int i = lista.Count;

// Itera pelos funcionários encontrados para mostrar o nome e salário
do
{
    Console.WriteLine($"Nome: {lista[i - 1].Nome} Salário: {lista[i - 1].Salario}");
}
while (i < lista.Count);

Console.ReadKey();