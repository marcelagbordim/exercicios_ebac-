            #language: pt

            Funcionalidade: Calculadora
            Como não sei fazer conta de cabeça
            Quero usar calculadora do sistemas
            Para somar dois números

            Cenário: Soma de 2 números
            Dado que eu acesse a calculadora
            Quando eu somar 2 + 2
            Então o resultado deve ser 4

            Esquema do Cenário: Soma de 2 números
            Quando eu digitar o <num1> mais <num2>
            Então deve exibir o <total>

            Exemplos:
            | num1 | num2  | total |
            | "5"  | "5"   | "10"  |
            | "5"  | "10"  | "15"  |
            | "5"  | "15"  | "20"  |
            | "5"  | "20"  | "25"  |
            | "5"  | "25"  | "30"  |
            | "5"  | "30"  | "35"  |
            | "5"  | "35"  | "40"  |
            | "5"  | "40"  | "45"  |
            | "5"  | "45"  | "50"  |
            | "5"  | "50"  | "55"  |
            | "5"  | "55"  | "60"  |
            | "5"  | "60"  | "65"  |
            | "5"  | "65"  | "70"  |
            | "5"  | "70"  | "75"  |
            | "5"  | "75"  | "80"  |
            | "5"  | "80"  | "85"  |
            | "5"  | "85"  | "90"  |
            | "5"  | "90"  | "95"  |
            | "5"  | "95"  | "100" |
            | "5"  | "100" | "105" |
