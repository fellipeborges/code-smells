using System;
using System.Collections.Generic;

//============================================================================================
// Instruções
//  - Mostre a lista de todos os funcionários e suas respectivas idades
//  - O campo idade pode não estar preenchido para alguns funcionários
//============================================================================================

var lista = new List<Funcionario>
{
    new Funcionario { Nome = "João da Silva", Idade = 22 },
    new Funcionario { Nome = "Maria Antonieta" },
    new Funcionario { Nome = "Fernando Matias", Idade = 65 },
    new Funcionario { Nome = "Tatiane das Dores" }
};

// Itera pelos funcionários encontrados para mostrar o nome e a idade
foreach (var funcionario in lista)
{
    //Console.WriteLine("Nome: " + funcionario.Nome + " Idade: " + funcionario.Idade);
    Console.WriteLine($"Nome: {funcionario.Nome} Idade: {funcionario.Idade}");
}

Console.ReadKey();