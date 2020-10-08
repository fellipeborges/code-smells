//============================================================================================
// Instruções
//  - Crie uma função que converta um status em texto (A,B,D) para um status numérico (1,2,3)
//      - "A" = 1 (Ativo)
//      - "D" = 2 (Desligado)
//      - "R" = 3 (Recuperado)
//============================================================================================

System.Console.WriteLine($"A: {ConverterStatus("A")}");
System.Console.WriteLine($"D: {ConverterStatus("D")}");
System.Console.WriteLine($"R: {ConverterStatus("R")}");

System.Console.ReadKey();

static int ConverterStatus(string status)
{
    switch (status)
    {
        case "A":
            return 1;

        case "D":
            return 2;

        case "R":
            return 3;
    }

    return 0;
}