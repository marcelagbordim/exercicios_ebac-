#language: pt

Funcionalidade: tela de login
Como cliente da EBAC-SHOP
Quero fazer o login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de autenticação da EBAC-SHOP

Esquema do Cenário: autenticação de usuário válida
Quando eu digitar o <usuario>
E a <senha>
Então o cliente deve ser redirecionado para a tela de checkout
E deve exibir a <mensagem> de sucesso

Exemplos:
            | usuario                  | senha        | mensagem               |
            | "joao.lucas@hotmail.com" | "030919@123" | "Bem vindo João Lucas" |
            | "marcio@gmail.com"       | "160286@123" | "Bem vindo Márcio"     |
            | "marcela@hotmail.com"    | "060291@123" | "Bem vinda Marcela"    |


Cenário: autenticação de usuário inválida
Quando eu digitar o usuário "belinha@123"
E a senha "auau@123"
Então deve exibir uma mensagem de alerta: "Usuário ou senha inválida"


Cenário: autenticação de senha inválida
Quando eu digitar o usuário "belinha@ebac"
E a senha "auau@ebac"
Então deve exibir uma mensagem de alerta: "Usuário ou senha inválida"


