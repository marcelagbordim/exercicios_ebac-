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

Exemplos:
            | usuario                  | senha        |
            | "joao.lucas@hotmail.com" | "030919@123" | 
            | "marcio@gmail.com"       | "160286@123" | 
            | "marcela@hotmail.com"    | "060291@123" |


Cenário: autenticação de usuário inválida
Quando eu digitar o usuário "belinha@123"
E a senha "auau@123"
Então deve exibir uma mensagem de alerta: "Usuário ou senha inválida"




