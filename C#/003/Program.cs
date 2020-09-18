//============================================================================================
// Instruções
//  - Dados os salários do ano de um vendedor, calcule o percentual de IRPF
//============================================================================================

double[] salarios = new double[]
{
    1021.37, 1000.21, 1243.12, 1554.55, 2341.22, 2211.12, 2215.87, 1297.86, 1425.76, 1877.43, 1122.92, 1298.99
};

int posicao = 0;
double percentualIRPF;
while (posicao <= 11)
{
    if (salarios[posicao] >= 0 && salarios[posicao] <= 500)
        percentualIRPF = 0;
    else if (salarios[posicao] > 500 && salarios[posicao] <= 1000)
        percentualIRPF = 7.5;
    else if (salarios[posicao] > 1001 && salarios[posicao] <= 2000)
        percentualIRPF = 15;
    else
        percentualIRPF = 27.5;

    System.Console.WriteLine("Valor do IRPF: " + salarios[posicao] / 100 * percentualIRPF);

    // Incrementa a variável posicao com +1
    posicao++;
}

System.Console.ReadKey();