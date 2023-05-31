#language: pt

Funcionalidade: Escolha de produto para inserir no carrinho
Como cliente da EBAC-SHOP
Quero configurar o produto de acordo com minhas preferencias
Para depois inserir ao carrinho de compras

Contexto: 
Dado que eu acesse a página de produtos da EBAC-SHOP

Esquema do Cenário: Escolha de produto preenchendo os campos obrigatórios
Quando eu selecionar o produto 
E preencher os campos obrigatórios de <cor>, <tamanho>, e <quantidade>
Então deve exibir a mensagem: "produto adicionado ao carrinho com sucesso"

Exemplos:
            | <cor>  | <tamanho> | <quantidade> |
            | "rosa" | "M"       | "1"          |
            | "azul" | "G"       | "5"          |

Esquema do Cenário: Escolha de produto sem preencher o campo cor
Quando eu selecionar o produto pelo <tamanho> e <quantidade>
E não preencher o campo <cor>
Então deve ser exibir uma mensagem de alerta: "Para adicionar o produto ao carrinho, por favor selecionar a cor" 

Exemplos:
            | <cor> | <tamanho> | <quantidade> |
            | ""    | "M"       | "1"          |
            | ""    | "G"       | "5"          |

Esquema do Cenário: Escolha de produto sem preencher o campo tamanho
Quando eu selecionar o produto pela <cor> e <quantidade>
E não preencher o campo <tamanho>
Então deve ser exibir uma mensagem de alerta: "Para adicionar o produto ao carrinho, por favor selecionar o tamanho" 

Exemplos:
            | <cor>  | <tamanho> | <quantidade> |
            | "rosa" | ""        | "1"          |
            | "azul" | ""        | "5"          |

Esquema do Cenário: Escolha de produto sem preencher o campo quantidade
Quando eu selecionar o produto pela <cor> e <tamanho>
E não preencher o campo <quantidade>
Então deve ser exibir uma mensagem de alerta: "Para adicionar o produto ao carrinho, por favor selecionar a quantidade" 

Exemplos:
            | <cor>  | <tamanho> | <quantidade> |
            | "rosa" | "M"        | ""          |
            | "azul" | "G"        | ""          |



Funcionalidade: Seleção de quantidade de produtos por carrinho de compras
Como cliente da EBAC-SHOP
Quero selecionar produtos para o meu carrinho de compras
Para efetuar a compra

Contexto:
Dado que eu acesse a página de produtos da EBAC-SHOP

Esquema do Cenário: Seleção de quantidade de produtos válido
Quando eu adicionar a <quantidade> de até 10 itens de produtos no carrinho de compras 
Então posso seguir para a página de checkout de pagamento

Exemplos:
            | "quantidade" |
            | "1"          |
            | "2"          |
            | "3"          |
            | "4"          |
            | "5"          |
            | "6"          |
            | "7"          |
            | "8"          |
            | "9"          |
            | "10"         |

Esquema do Cenário: Seleção de quantidade de produtos inválido
Quando eu adicionar a <quantidade> acima de 10 itens de produtos no carrinho de compras 
Então deve ser exibir uma mensagem de alerta: "É permitido comprar até 10 itens por carrrinho, favor verificar a quantidade de itens antes de finalizar a compra"

Exemplos:
            | "quantidade" |
            | "11"         |
            | "12"         |
            | "13"         |
            | "14"         |
            | "15"         |



Funcionalidade: Botão limpar 
Como cliente da EBAC-SHOP
Quero a opção do botão limpar para estornar minha seleção escolhida para determinado produto
E pode selecionar minhas preferencias para o produto novamente

Cenário: Botão limpar volta o produto aos parâmetros iniciais
Dado que eu acesse a página de produtos da EBAC-SHOP
E tenha selecionado errado algum campo obrigatório do produto escolhido
Quando eu clicar no botão limpar
Então os parâmetros escolhidos anteriormente serão restaurados para o estado original



