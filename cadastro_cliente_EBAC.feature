#language: pt

Funcionalidade: tela de cadastro cliente
Como cliente da EBAC-SHOP
Quero realizar/concluir o meu cadastro
Para finalizar a minha compra

Contexto:
Dado que eu esteja na tela de cadastro 

Cenário: preenchimento válido dos campos obrigatórios para conclusão do cadastro
Quando eu preencher devidamente os campos obrigatórios
Então o cadastro poderá ser finalizado com sucesso
E exibir uma mensagem "cadastro finalizado com sucesso"


Cenário: Não permitir cadastro de endereço de email com formato inválido
Quando eu preencher o endereço de email com caracteres inválidos
Então deve exibir uma mensagem de alerta: "Nesse campo não são permitidos caracteres especias, como: ~ # ! % $ ' & + * – / = ? ^ _`. { | }"


Cenário: preenchimento vazio de um ou mais campos obrigatórios para conclusão do cadastro
Quando eu deixar "vazio" um ou mais campos obrigatórios destacado com *
Então deve exibir uma mensagem de alerta "Por favor verificar se todos os campos obrigatórios com * foram devidamente preenchidos" 