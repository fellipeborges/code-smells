//============================================================================================
// Instruções
//  - Considere o valor da diária de R$ 50,00
//  - Considere uma taxa de turismo diária de R$ 1,00
//  - Calcule o valor total que o viajante deve pagar se ficar na cidade por 10 dias
//============================================================================================

// Constantes
const double VALOR_DIARIA = 50.00;
const double TAXA_TURISMO = 1.00;
const int QTDE_DIAS_ESTADIA = 10;

// Cálculo
double valorFinal = VALOR_DIARIA + TAXA_TURISMO * QTDE_DIAS_ESTADIA;

// Mostra ao usuário
System.Console.WriteLine(valorFinal);
System.Console.ReadKey();