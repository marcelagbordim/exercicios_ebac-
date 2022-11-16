#language: pt

Funcionalidade: Compra de produto
Como cliente da EBAC-SHOP
quero configurar o produto de acordo com meu tamanho 
e gosto
e escolher a quantidade
Para depois inserir ao carrinho de compras

Contexto: 
Dado que eu acesse a página de produtos da EBAC-SHOP

Cenário: Escolha de produto conforme a cor
Quando eu selecionar o produto disponível
E a cor disponível
Então deve exibir uma mensagem de alerta "selecione o tamanho"

Cenário: Escolha de produto conforme o tamanho
Quando eu selecionar a cor do produto disponível
E o tamanho disponível
Então deve exibir uma mensgaem de alerta "selecione a quantidade"

Esquema do Cenário: Escolha de produto conforme quantidade  
Quando eu digitar a <quantidade> de itens por produto
Então deve exibir uma <mensagem>  

Exemplos:
            | quantidade   | mensagem                                         |
            | "1 a 10"     | "produto adicionado ao carrinho com sucesso"     |
            | "11 ou mais" | "Permitido adicionar até 10 produtos por pedido" |

Funcionalidade: Botão limpar 
Como cliente da EBAC-SHOP
quero configurar o produto de acordo com as minhas preferências
e depois clicar no botão limpar
Para voltar os parâmetros selecionados anteriormente ao estágio inicial
e pode refazer a escolha do produto de acordo com minhas novas preferências

Cenário: Botão limpar volta o produto aos parâmetros iniciais
Dado que eu acesse a página de produtos da EBAC-SHOP
E tenha escolhido o produto pela cor, tamanho e/ou quantidade
Quando eu clicar no botão limpar
Então os parâmetros escolhidos anteriormente serão restaurados para o estado original



