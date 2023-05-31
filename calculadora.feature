            #language: pt

            Funcionalidade: Calculadora
            Como não sei fazer conta de cabeça
            Quero usar calculadora do sistema
            Para realizar operações básicas de matemática

            Cenário: Soma de 2 números
            Dado que eu acesse a calculadora
            Quando eu somar 2 + 2
            Então o resultado deve ser 4

            Esquema do Cenário: operações matemáticas
            Quando eu digitar o <num1> <operacao> e o <num2>
            Então deve exibir o <total>

            Exemplos:
            | num1  | operacao | num2 | total |
            | 5     | +        | 5    | 10    |
            | 500   | -        | 400  | 100   |
            | 759   | -        | 760  | -1    |
            | 1000  | -        | 1000 | 0     |
            | 60    | x        | 25   | 1500  |
            | 65800 | /        | 47   | 1400  |

