#language: pt

Funcionalidade: Configurar produtos
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

Contexto: Dado que eu estou na página de um produto


Cenário: Seleção obrigatória de cor, tamanho e quantidade 
    E não selecionei a cor, nem o tamanho e nem a quantidade do produto
    Quando eu clicar no botão comprar
    Então o sistema deve exibir uma mensagem de erro "Seleção de cor, tamanho e quantidade são obrigatórios"


Cenário: Adicionar produtos ao carrinho 
    E selecionei a cor "Orange", o tamanho "XS" e quantidade "2"
    Quando eu clicar no botão "Comprar"
    Então o produto deve ser adicionado ao meu carrinho com sucesso.     


Cenário: Limitação de produtos por venda
    E selecionei a cor, o tamanho e a quantidade de 10 produtos
    Quando eu tentar adicionar mais 5 produtos no carrinho
    Então o sistema deve exibir a mensagem de erro "Quantidade máxima de produtos por venda é 10"   


Esquema do Cenario: Botão Limpar
    E selecionei a cor <cor>, o tamanho <tamanho> e a quantidade <quantidade>
    Quando eu clicar no botão "limpar"
    Então a cor, o tamanho e a quantidade devem voltar ao padrão inicial sem Seleção
    Exemplos:
    |cor    | tamanho  |quantidade|
    |Blue   |   S      |    2     |
    |Red    |   M      |    1     |
    |Orange |   G      |    4     |


