#language: pt

Funcionalidade: tela de cadastro cliente
Como cliente da EBAC-SHOP
Quero realizar/concluir o meu cadastro
Para finalizar a minha compra

Contexto:
Dado que eu esteja na tela de cadastro 

Esquema do Cenário: preenchimento válido dos campos obrigatórios para conclusão do cadastro
Quando eu preencher o campo <nome>
E o campo <sobrenome>
E o campo <pais>
E o campo <endereco>
E o campo <cidade>
E o campo <CEP>
E o campo <telefone>
E o campo <endereco_de_email>
Então o cadastro poderá ser finalizado com sucesso
E deve exibir uma <mensagem> de sucesso

Exemplos:
            | nome   | sobrenome | pais     | endereco               | cidade    | CEP         | telefone       | endereco_de_email | mensagem                           |
            | "João" | "Lucas"   | "Brasil" | "Rua Luiz Clini, n109" | "Itupeva" | "13295-172" | "1194100-0000" | "joao.lucas@ebac" | "cadastro finalizado com sucesso!" |


Cenário: Não permitir cadastro de endereço de email com formato inválido
Quando eu preencher o endereço de email "joão.lucas@ebac"
Então deve exibir uma mensagem de alerta: "Nesse campo não são permitidos caracteres especias, como: ~ # ! % $ ' & + * – / = ? ^ _`. { | }"


Esquema do Cenário: preenchimento em branco de um ou mais campos obrigatórios para conclusão do cadastro
Quando eu preencher ou deixar em branco o campo <nome>
E o campo <sobrenome>
E o campo <pais>
E o campo <endereco>
E o campo <cidade>
E o campo <CEP>
E o campo <telefone>
E o campo <endereco_de_email>
Então deve exibir uma <mensagem> de alerta

Exemplos:
            | nome   | sobrenome | pais     | endereco               | cidade    | CEP         | telefone       | endereco_de_email | mensagem                                                                                  |
            | "João" | "Lucas"   | "Brasil" | "Rua Luiz Clini, n109" | "Itupeva" | "13295-172" | "1194100-0000" |                   | "Por favor verificar se todos os campos obrigatórios com * foram devidamente preenchidos" |
            | "João" | "Lucas"   | "Brasil" | "Rua Luiz Clini, n109" | "Itupeva" | "13295-172" |                | "joao.lucas@ebac" | "Por favor verificar se todos os campos obrigatórios com * foram devidamente preenchidos" |
            | "João" | "Lucas"   | "Brasil" | "Rua Luiz Clini, n109" | "Itupeva" |             | "1194100-0000" | "joao.lucas@ebac" | "Por favor verificar se todos os campos obrigatórios com * foram devidamente preenchidos" |
            | "João" | "Lucas"   | "Brasil" | "Rua Luiz Clini, n109" |           | "13295-172" | "1194100-0000" | "joao.lucas@ebac" | "Por favor verificar se todos os campos obrigatórios com * foram devidamente preenchidos" |
            | "João" | "Lucas"   | "Brasil" |                        | "Itupeva" | "13295-172" | "1194100-0000" | "joao.lucas@ebac" | "Por favor verificar se todos os campos obrigatórios com * foram devidamente preenchidos" |
            | "João" | "Lucas"   |          | "Rua Luiz Clini, n109" | "Itupeva" | "13295-172" | "1194100-0000" | "joao.lucas@ebac" | "Por favor verificar se todos os campos obrigatórios com * foram devidamente preenchidos" |
            | "João" |           | "Brasil" | "Rua Luiz Clini, n109" | "Itupeva" | "13295-172" | "1194100-0000" | "joao.lucas@ebac" | "Por favor verificar se todos os campos obrigatórios com * foram devidamente preenchidos" |
            |        | "Lucas"   | "Brasil" | "Rua Luiz Clini, n109" | "Itupeva" | "13295-172" | "1194100-0000" | "joao.lucas@ebac" | "Por favor verificar se todos os campos obrigatórios com * foram devidamente preenchidos" |
            |        | "Lucas"   | "Brasil" | "Rua Luiz Clini, n109" | "Itupeva" | "13295-172" | "1194100-0000" |                   | "Por favor verificar se todos os campos obrigatórios com * foram devidamente preenchidos" |


