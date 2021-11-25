//============================================================================================
// Instruções
//  - Solicite ao usuário o valor trimestral de KM rodados pelos carros da locadora
//  - Some os quatro valores para calcular o valor anual
//  - Baseado no KM anual obtido, calcule o KM previsto para os próximos 10 anos
//============================================================================================

// Variáveis
int kmPrimeiroTri;
int kmSegundoTri;
int kmTerceiroTri;
int kmQuartoTri;
int kmTotal;
int km10Anos;

// Usuário informa os KMs
kmPrimeiroTri = 98126541;
kmSegundoTri = 8992635;
kmTerceiroTri = 79986892;
kmQuartoTri = 90698901;

// Calcula o valor anual
kmTotal = kmPrimeiroTri + kmSegundoTri + kmTerceiroTri + kmQuartoTri;

// Faz a previsão para os próximos 10 anos
km10Anos = kmTotal * 10;

// Mostra ao usuário
System.Console.WriteLine(km10Anos);
System.Console.ReadKey();